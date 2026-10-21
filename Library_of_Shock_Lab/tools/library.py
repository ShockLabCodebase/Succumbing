#!/usr/bin/env python
"""Reference library tool. Reads the JSON-valued YAML frontmatter of Library_of_Shock_Lab/notes/*.md
(see Library_of_Shock_Lab/SCHEMA.md) and:

  build              regenerate Library_of_Shock_Lab/INDEX.md and Library_of_Shock_Lab/references.bib
  check              check frontmatter, vocabulary, PDFs, links, topic pages, CSVs, duplicates
  unindexed [DIR]    list PDFs (default Library_of_Shock_Lab/Paper_PDFs, recursive) with no note,
                     one "<index key><TAB><path>" per line; Paper_PDFs/_Off_Topic is skipped
                     unless DIR is (inside) it
  file [--dry]       move each indexed PDF into Paper_PDFs/<primary topic>/ and update its note
  find [filters]     list notes matching every filter, e.g.
                       find --methods SPOD --data schlieren-TR --flow rectangular-jet
                       find --topics screech --since 2018 --text staging
                       find --param NPR --long
  cites [--write] [KEY ...]
                     match each paper's reference list (via pdftotext) against the library
                     and, with --write, store the result in the `cites` field

Stdlib only; any Python 3.8+. Run from anywhere, e.g.
  "$USERPROFILE/anaconda3/python.exe" Library_of_Shock_Lab/tools/library.py check
"""

import argparse
import csv
import difflib
import json
import os
import re
import shutil
import subprocess
import sys
import tempfile
import unicodedata
from pathlib import Path

REF = Path(__file__).resolve().parent.parent
NOTES = REF / "notes"
TOPICS = REF / "topics"
DATA = REF / "data"
PDFS = REF / "Paper_PDFs"
OFF_TOPIC = "_Off_Topic"   # PDFs the user set aside; indexed only when named directly
INDEX = REF / "INDEX.md"
BIB = REF / "references.bib"
SCHEMA = REF / "SCHEMA.md"

FIELDS = ["key", "title", "authors", "year", "type", "venue", "bib", "doi", "arxiv", "pdf",
          "version", "unverified", "group", "facility", "data", "methods", "flow", "phenomena",
          "params", "topics", "related", "cites", "summary"]
LIST_FIELDS = {"authors", "unverified", "data", "methods", "flow", "phenomena", "topics",
               "related", "cites"}
MAP_FIELDS = {"bib", "params"}
VOCAB_FIELDS = ["data", "methods", "flow", "phenomena", "topics"]
TYPES = {"article": "article", "review": "article", "conference": "inproceedings",
         "preprint": "misc", "thesis-phd": "phdthesis", "thesis-msc": "mastersthesis",
         "report": "techreport", "book": "book"}
VERSIONS = {"published", "accepted-manuscript", "preprint", "conference", "thesis", "report"}

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")


# ---------------------------------------------------------------- frontmatter

class Note:
    def __init__(self, path):
        self.path = path
        self.key = path.stem
        text = path.read_text(encoding="utf-8")
        self.meta, self.body, self.errors = parse_frontmatter(text)

    def __getattr__(self, name):
        if name in FIELDS:
            default = [] if name in LIST_FIELDS else {} if name in MAP_FIELDS else ""
            return (self.meta or {}).get(name, default)
        raise AttributeError(name)


def parse_frontmatter(text):
    lines = text.split("\n")
    if not lines or lines[0].strip() != "---":
        return None, text, ["no frontmatter"]
    meta, errors = {}, []
    for i in range(1, len(lines)):
        line = lines[i].rstrip("\r")
        if line.strip() == "---":
            return meta, "\n".join(lines[i + 1:]), errors
        if not line.strip():
            continue
        m = re.match(r"^([A-Za-z_]+):\s*(.*)$", line)
        if not m:
            errors.append(f"frontmatter line {i + 1} is not 'field: value'")
            continue
        field, value = m.groups()
        try:
            meta[field] = json.loads(value) if value.strip() else ""
        except json.JSONDecodeError as e:
            errors.append(f"field '{field}' is not a JSON value ({e.msg})")
    return None, text, ["frontmatter not closed with ---"]


def set_field(path, field, value):
    raw = path.read_bytes().decode("utf-8")
    nl = "\r\n" if "\r\n" in raw else "\n"
    lines = raw.split(nl)
    if lines[0] != "---":
        raise ValueError(f"{path.name}: no frontmatter")
    end = next(i for i in range(1, len(lines)) if lines[i] == "---")
    new = f"{field}: {json.dumps(value, ensure_ascii=False)}"
    for i in range(1, end):
        if lines[i].startswith(field + ":"):
            lines[i] = new
            break
    else:
        lines.insert(end, new)
    path.write_bytes(nl.join(lines).encode("utf-8"))


def load_notes():
    return [Note(p) for p in sorted(NOTES.glob("*.md"))]


def load_vocab():
    vocab = {f: set() for f in VOCAB_FIELDS}
    topic_desc = {}
    current = None
    for line in SCHEMA.read_text(encoding="utf-8").splitlines():
        m = re.match(r"^### `(\w+)`", line)
        if m:
            current = m.group(1) if m.group(1) in vocab else None
            continue
        if line.startswith("## "):
            current = None
        if current and line.startswith("- "):
            head = line[2:].split(":")[0]
            for tok in re.findall(r"`([^`]+)`", head):
                vocab[current].add(tok)
                if current == "topics":
                    topic_desc[tok] = line.split(":", 1)[1].strip() if ":" in line else ""
    return vocab, topic_desc


# ---------------------------------------------------------------- helpers

def fold(s):
    s = unicodedata.normalize("NFKD", str(s))
    return "".join(c for c in s if not unicodedata.combining(c)).lower()


def spaced(s):
    return re.sub(r"[^a-z0-9]+", " ", fold(s)).strip()


def surname(author):
    return author.split(",")[0].strip()


def sort_surname(author):
    s = fold(surname(author))
    return re.sub(r"^(von|van|de|der|da|di|le|la)\s+", "", s)


def short_authors(authors):
    names = [surname(a) for a in authors] or ["Anon."]
    if len(names) == 1:
        return names[0]
    if len(names) == 2:
        return f"{names[0]} & {names[1]}"
    return f"{names[0]} et al."


def pdf_key(path):
    a = os.path.abspath(path)
    base = os.path.abspath(PDFS) + os.sep
    if a.lower().startswith(base.lower()):
        return a[len(base):].replace("\\", "/")
    return a.replace("\\", "/")


def pdf_path(key):
    if re.match(r"^([A-Za-z]:/|//)", key):
        return Path(key)
    return PDFS / key


def sort_key(n):
    return (sort_surname(n.authors[0]) if n.authors else n.key, n.year or 0, fold(n.title))


# ---------------------------------------------------------------- build

def render_index(notes, topic_desc):
    counts = {}
    for n in notes:
        for t in n.topics:
            counts[t] = counts.get(t, 0) + 1
    out = [
        "# Reference index",
        "",
        "Generated by `python Library_of_Shock_Lab/tools/library.py build` from the notes' frontmatter. "
        "Do not edit by hand: change the note and rebuild. One line per paper. For a research "
        "question, start from the topic pages; to filter by data, method, flow or parameters, "
        "use `library.py find` (see `SCHEMA.md`).",
        "",
        "## Topic pages",
        "",
    ]
    for t, desc in topic_desc.items():
        out.append(f"- [{t}](topics/{t}.md) ({counts.get(t, 0)} papers): {desc}")
    out += ["", f"## Papers ({len(notes)})", ""]
    for n in sorted(notes, key=sort_key):
        venue = f" ({n.venue})" if n.venue else ""
        out.append(f"- [{short_authors(n.authors)} {n.year}](notes/{n.key}.md), "
                   f"*{n.title}*{venue}. {n.summary}")
    return "\n".join(out) + "\n"


def bib_escape(s):
    parts = str(s).split("$")
    for i in range(0, len(parts), 2):  # outside $...$
        parts[i] = re.sub(r"(?<!\\)([&%#_])", r"\\\1", parts[i])
    return "$".join(parts)


def render_bib(notes):
    out = ["% Generated by Library_of_Shock_Lab/tools/library.py build from note frontmatter. "
           "Do not edit by hand.", "% Entries with a 'note = {UNVERIFIED ...}' field have "
           "citation details that were not confirmed from the PDF.", ""]
    for n in sorted(notes, key=sort_key):
        etype = TYPES.get(n.type, "misc")
        fields = [("author", " and ".join(n.authors)), ("title", n.title), ("year", str(n.year))]
        bib = dict(n.bib or {})
        if etype == "article" and "journal" not in bib and n.venue:
            bib["journal"] = n.venue
        if etype == "inproceedings" and "booktitle" not in bib and n.venue:
            bib["booktitle"] = n.venue
        if etype in ("phdthesis", "mastersthesis") and "school" not in bib and n.venue:
            bib["school"] = n.venue
        if etype == "techreport" and "institution" not in bib and n.venue:
            bib["institution"] = n.venue
        note = bib.pop("note", "")
        for k in ("journal", "booktitle", "school", "institution", "publisher", "volume",
                  "number", "pages"):
            if bib.get(k):
                fields.append((k, str(bib.pop(k))))
        for k, v in bib.items():
            if v:
                fields.append((k, str(v)))
        if n.doi:
            fields.append(("doi", n.doi))
        if n.arxiv:
            fields += [("eprint", n.arxiv), ("archiveprefix", "arXiv")]
            if etype == "misc":
                fields.append(("howpublished", f"arXiv:{n.arxiv}"))
        if n.unverified:
            note = (note + ". " if note else "") + "UNVERIFIED: " + "; ".join(n.unverified)
        if note:
            fields.append(("note", note))
        out.append(f"@{etype}{{{n.key},")
        for k, v in fields:
            v = v if k in ("doi", "eprint") else bib_escape(v)
            out.append(f"  {k} = {{{v}}},")
        out.append("}")
        out.append("")
    return "\n".join(out)


def cmd_build(args):
    notes = load_notes()
    bad = [n for n in notes if n.meta is None or n.errors]
    if bad:
        for n in bad:
            print(f"ERROR {n.key}: {'; '.join(n.errors)}")
        print("Fix the frontmatter above before building.")
        return 1
    _, topic_desc = load_vocab()
    write_if_changed(INDEX, render_index(notes, topic_desc))
    write_if_changed(BIB, render_bib(notes))
    print(f"Built INDEX.md and references.bib from {len(notes)} notes.")
    return 0


def write_if_changed(path, text):
    old = path.read_text(encoding="utf-8") if path.exists() else None
    if old != text:
        path.write_bytes(text.encode("utf-8"))


# ---------------------------------------------------------------- check

def cmd_check(args):
    notes = load_notes()
    vocab, topic_desc = load_vocab()
    errors, warnings = [], []
    keys = {n.key for n in notes}
    by_pdf, by_doi = {}, {}

    for n in notes:
        e = lambda msg: errors.append(f"{n.key}: {msg}")
        w = lambda msg: warnings.append(f"{n.key}: {msg}")
        if n.meta is None or n.errors:
            e("; ".join(n.errors))
            continue
        for f in FIELDS:
            if f not in n.meta:
                e(f"missing field '{f}'")
        for f in set(n.meta) - set(FIELDS):
            w(f"unknown field '{f}'")
        if n.meta.get("key") != n.key:
            e(f"key '{n.meta.get('key')}' does not match the filename")
        for f in LIST_FIELDS:
            if f in n.meta and not isinstance(n.meta[f], list):
                e(f"'{f}' must be a list")
        for f in MAP_FIELDS:
            if f in n.meta and not isinstance(n.meta[f], dict):
                e(f"'{f}' must be a map")
        if not isinstance(n.meta.get("year"), int):
            e("'year' must be a number")
        if not n.authors or any("," not in a for a in n.authors):
            w("authors should be 'Surname, Given' entries")
        if n.type not in TYPES:
            e(f"type '{n.type}' not one of {sorted(TYPES)}")
        if n.version not in VERSIONS:
            e(f"version '{n.version}' not one of {sorted(VERSIONS)}")
        if not isinstance(n.meta.get("group"), bool):
            e("'group' must be true or false")
        if not n.summary:
            e("empty summary")
        elif len(n.summary) > 220:
            w(f"summary is {len(n.summary)} characters (aim for about 160)")
        if n.doi and (n.doi.startswith("http") or n.doi.lower().startswith("doi")):
            e("doi must be bare, e.g. 10.1017/jfm.2022.549")
        for f in VOCAB_FIELDS:
            for v in n.meta.get(f, []) if isinstance(n.meta.get(f), list) else []:
                if v not in vocab[f]:
                    w(f"{f} value '{v}' is not in SCHEMA.md")
        for f in ("related", "cites"):
            for k in n.meta.get(f, []) if isinstance(n.meta.get(f), list) else []:
                if k not in keys:
                    e(f"{f} entry '{k}' is not a note")
                if k == n.key:
                    w(f"{f} lists the note itself")
        if n.pdf:
            by_pdf.setdefault(n.pdf, []).append(n.key)
            p = pdf_path(n.pdf)
            try:
                exists = p.exists()
            except OSError:
                exists = False
            if not exists:
                (w if is_external(n.pdf) else e)(f"PDF not found: {n.pdf}")
            elif not is_external(n.pdf) and n.pdf != filed_key(n):
                w(f"PDF is not in its primary-topic folder: run library.py file")
        else:
            w("no pdf key")
        if n.doi:
            by_doi.setdefault(n.doi.lower(), []).append(n.key)
        for t in n.topics:
            page = TOPICS / f"{t}.md"
            if not page.exists():
                w(f"topic page topics/{t}.md does not exist")
            elif f"notes/{n.key}.md" not in page.read_text(encoding="utf-8"):
                w(f"not yet discussed on topics/{t}.md")

    for k, v in by_pdf.items():
        if len(v) > 1:
            errors.append(f"PDF key {k} used by several notes: {', '.join(v)}")
    for k, v in by_doi.items():
        if len(v) > 1:
            warnings.append(f"DOI {k} shared by {', '.join(v)} (duplicate?)")
    good = [n for n in notes if n.meta is not None and not n.errors]
    for i, a in enumerate(good):
        for b in good[i + 1:]:
            if (a.authors and b.authors and sort_surname(a.authors[0]) == sort_surname(b.authors[0])
                    and abs((a.year or 0) - (b.year or 0)) <= 1
                    and difflib.SequenceMatcher(None, spaced(a.title), spaced(b.title)).ratio() > 0.8):
                warnings.append(f"possible duplicate: {a.key} / {b.key}")

    # links in notes, topic pages, data README
    files = list(NOTES.glob("*.md")) + list(TOPICS.glob("*.md")) + [DATA / "README.md", SCHEMA]
    for f in files:
        if not f.exists():
            continue
        for target in re.findall(r"\]\(([^)\s#]+)(?:#[^)]*)?\)", f.read_text(encoding="utf-8")):
            if re.match(r"^[a-z]+:", target) or not target.endswith(".md") or "<" in target:
                continue
            if not (f.parent / target).exists():
                warnings.append(f"{f.relative_to(REF).as_posix()}: broken link {target}")

    # data tables
    for f in sorted(DATA.glob("*.csv")) if DATA.exists() else []:
        with open(f, encoding="utf-8", newline="") as fh:
            rows = list(csv.DictReader(fh))
        for i, row in enumerate(rows, start=2):
            if "note" in row and row["note"] not in keys:
                errors.append(f"data/{f.name} line {i}: note '{row['note']}' does not exist")

    # generated files up to date
    if not errors and all(n.meta is not None and not n.errors for n in notes):
        if not INDEX.exists() or INDEX.read_text(encoding="utf-8") != render_index(notes, topic_desc):
            errors.append("INDEX.md is out of date: run library.py build")
        if not BIB.exists() or BIB.read_text(encoding="utf-8") != render_bib(notes):
            errors.append("references.bib is out of date: run library.py build")

    unindexed = list_unindexed(PDFS, notes)
    queue = {f.stem: len(re.findall(r"^## ", f.read_text(encoding="utf-8"), re.M))
             for f in sorted((TOPICS / "_queue").glob("*.md"))} if (TOPICS / "_queue").exists() else {}
    for w in warnings:
        print("WARN ", w)
    for e in errors:
        print("ERROR", e)
    print(f"{len(notes)} notes, {len(errors)} errors, {len(warnings)} warnings, "
          f"{len(unindexed)} PDFs in Paper_PDFs without a note (run /add-paper).")
    if queue:
        due = [t for t, k in queue.items() if k >= 5]
        print("Topic contributions queued: " + ", ".join(f"{t} {k}" for t, k in queue.items())
              + (f". Due for revision (5+): {', '.join(due)}." if due else "."))
    note_updates = REF / "notes_to_update.md"
    n_upd = len(re.findall(r"^## ", note_updates.read_text(encoding="utf-8"), re.M)) if note_updates.exists() else 0
    if n_upd:
        print(f"Note updates queued: {n_upd} notes in notes_to_update.md"
              + (" (due: 10+)." if n_upd >= 10 else "."))
    return 1 if errors else 0


# ---------------------------------------------------------------- unindexed

def list_unindexed(folder, notes=None):
    notes = notes if notes is not None else load_notes()
    known = {n.pdf for n in notes if n.meta}
    out = []
    skip_off_topic = OFF_TOPIC not in Path(folder).resolve().parts
    for root, dirs, files in os.walk(folder):
        if skip_off_topic:
            dirs[:] = [d for d in dirs if d != OFF_TOPIC]
        for name in sorted(files):
            if name.lower().endswith(".pdf"):
                p = os.path.join(root, name)
                k = pdf_key(p)
                if k not in known:
                    out.append((k, os.path.abspath(p).replace("\\", "/")))
    return sorted(out)


def cmd_unindexed(args):
    folder = Path(args.folder) if args.folder else PDFS
    if not folder.is_dir():
        print(f"Not a folder: {folder}", file=sys.stderr)
        return 1
    for k, p in list_unindexed(folder):
        print(f"{k}\t{p}")
    return 0


# ---------------------------------------------------------------- file

def is_external(key):
    return bool(re.match(r"^([A-Za-z]:/|//)", key))


def filed_key(n):
    """Where an indexed PDF belongs: Paper_PDFs/<first topic>/<filename>."""
    return f"{n.topics[0] if n.topics else 'Other'}/{n.pdf.rsplit('/', 1)[-1]}"


def cmd_file(args):
    """Move each indexed PDF in Paper_PDFs into the folder of its primary (first) topic."""
    moved = 0
    for n in load_notes():
        if not n.meta or not n.pdf or is_external(n.pdf):
            continue
        new = filed_key(n)
        if new == n.pdf:
            continue
        src, dst = PDFS / n.pdf, PDFS / new
        if not src.exists():
            print(f"{n.key}: PDF not found: {n.pdf}")
            continue
        if dst.exists():
            print(f"{n.key}: {new} already exists; left in place")
            continue
        print(f"{n.pdf} -> {new}")
        if args.dry:
            continue
        dst.parent.mkdir(exist_ok=True)
        os.rename(src, dst)
        raw = n.path.read_bytes().decode("utf-8")
        raw = raw.replace(f"Paper_PDFs/{n.pdf}", f"Paper_PDFs/{new}").replace(f"`{n.pdf}`", f"`{new}`")
        n.path.write_bytes(raw.encode("utf-8"))
        set_field(n.path, "pdf", new)
        moved += 1
    print(f"{'Would move' if args.dry else 'Moved'} PDFs as listed ({moved} moved).")
    return 0


# ---------------------------------------------------------------- find

def cmd_find(args):
    notes = [n for n in load_notes() if n.meta]
    hits = []
    for n in notes:
        ok = True
        for f in VOCAB_FIELDS:
            want = getattr(args, f) or []
            have = {fold(v) for v in n.meta.get(f, [])}
            ok &= all(fold(v) in have for v in want)
        if args.text:
            hay = fold(" ".join([n.title, n.summary, n.venue, " ".join(n.authors),
                                 n.facility, json.dumps(n.params, ensure_ascii=False)]))
            ok &= all(fold(t) in hay for t in args.text)
        if args.author:
            ok &= any(fold(args.author) in fold(a) for a in n.authors)
        if args.since:
            ok &= (n.year or 0) >= args.since
        if args.until:
            ok &= (n.year or 0) <= args.until
        if args.group:
            ok &= n.meta.get("group") is True
        for p in args.param or []:
            ok &= any(fold(p) == fold(k) for k in n.params)
        if ok:
            hits.append(n)
    for n in sorted(hits, key=lambda n: (n.year or 0, n.key)):
        print(f"{n.key}  [{n.year}]  {n.summary}")
        if args.long:
            print(f"    data: {', '.join(n.data)} | methods: {', '.join(n.methods)}")
            print(f"    flow: {', '.join(n.flow)} | params: {json.dumps(n.params, ensure_ascii=False)}")
    print(f"({len(hits)} notes)")
    return 0


# ---------------------------------------------------------------- cites

STOP = set("""about after among their there these those which using based study studies
analysis effect effects novel approach towards toward under within between through
characterization characterisation investigation measurement measurements experimental
numerical application applications early other while where""".split())


def title_words(title):
    return [w for w in spaced(title).split() if len(w) >= 5 and w not in STOP]


def title_score(title, compact_window):
    words = title_words(title)
    if not words:
        return 0.0
    return sum(w in compact_window for w in words) / len(words)


def refs_section(text):
    lines = text.split("\n")
    heads = [i for i, l in enumerate(lines)
             if re.match(r"^\s*(\d+\.?\s*|[A-Z]\.\s*)?(references|bibliography|reference list|"
                         r"literature cited|works cited)\s*$", l.strip(), re.I)]
    if not heads:
        return text[int(len(text) * 0.7):]
    parts = []
    for j, i in enumerate(heads):
        stop = heads[j + 1] if j + 1 < len(heads) else len(lines)
        parts.append("\n".join(lines[i + 1:min(stop, i + 4000)]))
    return "\n".join(parts)


def match_cites(citing, refs, notes):
    sp = spaced(refs)
    low = refs.lower()
    groups = {}
    for n in notes:
        if n.authors:
            groups.setdefault((sort_surname(n.authors[0]), n.year), []).append(n.key)
    found = set()
    for p in notes:
        if p.key == citing.key or not p.authors or (p.year or 0) > (citing.year or 0) + 1:
            continue
        if p.doi and p.doi.lower() in low:
            found.add(p.key)
            continue
        words = title_words(p.title)
        sn = spaced(surname(p.authors[0]))
        pat = r"\b" + r"\s*".join(map(re.escape, sn.split())) + r"\b"
        for m in re.finditer(pat, sp):
            window = sp[m.end():m.end() + 500]
            ym = re.search(r"\b(19|20)\d\d\b", window)
            if not ym:
                continue
            y = int(ym.group())
            score = title_score(p.title, window.replace(" ", ""))
            need = 1.0 if len(words) <= 3 else 0.6
            if (y == p.year and score >= need) or (abs(y - (p.year or 0)) == 1 and score >= 0.75):
                found.add(p.key)
                break
    return sorted(found)


def cmd_cites(args):
    exe = shutil.which("pdftotext")
    if not exe:
        print("pdftotext not found on PATH", file=sys.stderr)
        return 1
    notes = [n for n in load_notes() if n.meta]
    targets = [n for n in notes if not args.keys or n.key in args.keys]
    cache = Path(tempfile.gettempdir()) / "library_refs_cache"
    cache.mkdir(exist_ok=True)
    for n in targets:
        p = pdf_path(n.pdf) if n.pdf else None
        if not p or not p.exists():
            print(f"{n.key}: PDF not available, skipped")
            continue
        txt = cache / f"{n.key}.txt"
        if not txt.exists() or txt.stat().st_mtime < p.stat().st_mtime:
            r = subprocess.run([exe, "-enc", "UTF-8", str(p), str(txt)], capture_output=True)
            if r.returncode != 0 or not txt.exists():
                print(f"{n.key}: pdftotext failed, skipped")
                continue
        text = txt.read_text(encoding="utf-8", errors="replace")
        if len(text.strip()) < 500:
            print(f"{n.key}: no text layer (scanned?), skipped")
            continue
        cites = match_cites(n, refs_section(text), notes)
        changed = sorted(cites) != sorted(n.cites)
        print(f"{n.key}: {len(cites)} cites{' (changed)' if changed else ''}")
        if args.write and changed:
            set_field(n.path, "cites", cites)
    return 0


# ---------------------------------------------------------------- main

def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = ap.add_subparsers(dest="cmd", required=True)
    sub.add_parser("build")
    sub.add_parser("check")
    u = sub.add_parser("unindexed")
    u.add_argument("folder", nargs="?")
    f = sub.add_parser("find")
    for field in VOCAB_FIELDS:
        f.add_argument(f"--{field}", action="append")
    f.add_argument("--text", action="append", help="substring of title/summary/venue/authors/params")
    f.add_argument("--author")
    f.add_argument("--param", action="append", help="params key present, e.g. NPR")
    f.add_argument("--since", type=int)
    f.add_argument("--until", type=int)
    f.add_argument("--group", action="store_true", help="Shock Lab group papers only")
    f.add_argument("--long", action="store_true")
    fl = sub.add_parser("file")
    fl.add_argument("--dry", action="store_true")
    c = sub.add_parser("cites")
    c.add_argument("--write", action="store_true")
    c.add_argument("keys", nargs="*")
    args = ap.parse_args()
    return {"build": cmd_build, "check": cmd_check, "unindexed": cmd_unindexed,
            "file": cmd_file, "find": cmd_find, "cites": cmd_cites}[args.cmd](args)


if __name__ == "__main__":
    sys.exit(main())

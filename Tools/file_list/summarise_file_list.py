"""Find data that has been parked: large files and folders nobody has used for a while.

Reads a CSV from file_list.sh or file_list.ps1 (which have already rolled small
files up into folders; older one-row-per-file listings also work, and are
rolled up here) and reports the stale items
(nothing in them used for --days), largest first, with who owns them. An item
is either
  - a single file of at least --min-size, or
  - a folder whose remaining smaller files add up to at least --min-size,
    reported at the deepest level where they reach it. Files and subfolders
    already reported are not counted again.
So a 50 GB video and a folder of 100 000 small PIV images both appear, but
nothing smaller than --min-size clutters the report. --depth N instead groups
everything into folders N levels below the root (still dropping those under
--min-size). Standard library only; runs with any Python 3.8+ on Windows or M3.

Usage:
    python summarise_file_list.py listing.csv [--days 180] [--min-size 1G]
                                  [--depth N] [--time latest|modified|access]
                                  [--root DIR] [--out stale.csv]
"""

import argparse
import csv
import posixpath
from collections import Counter, defaultdict
from datetime import datetime, timedelta

FMT = "%Y-%m-%d %H:%M:%S"
UNITS = {"": 1, "K": 1024, "M": 1024 ** 2, "G": 1024 ** 3, "T": 1024 ** 4}


def human(n):
    for unit in ("B", "KB", "MB", "GB", "TB"):
        if n < 1024 or unit == "TB":
            return f"{n:.0f} {unit}" if unit == "B" else f"{n:.1f} {unit}"
        n /= 1024


def parse_size(s):
    """'1G', '500MB', '2t' or plain bytes -> bytes."""
    t = s.strip().upper().rstrip("B")
    unit = t[-1] if t and t[-1] in UNITS else ""
    return int(float(t[:len(t) - len(unit)]) * UNITS[unit])


def table(headers, rows):
    widths = [max(len(str(x)) for x in col) for col in zip(headers, *rows)]
    line = lambda r: "  ".join(str(x).ljust(w) for x, w in zip(r, widths)).rstrip()
    return "\n".join([line(headers), line(["-" * w for w in widths])] + [line(r) for r in rows])


def new_item():
    return {"bytes": 0, "files": 0, "used": "", "owners": Counter()}


def add(item, size, used, owner, files=1):
    item["bytes"] += size
    item["files"] += files
    item["used"] = max(item["used"], used)
    item["owners"][owner] += size


def merge(into, other):
    into["bytes"] += other["bytes"]
    into["files"] += other["files"]
    into["used"] = max(into["used"], other["used"])
    into["owners"].update(other["owners"])


def home(kind, rel):
    """The folder a listing row belongs to: a folder row is its own."""
    return rel if kind == "folder" else posixpath.dirname(rel) or "."


def by_size(files, min_size):
    """Big items on their own; smaller ones rolled up into folders reaching min_size."""
    items, dirs = {}, defaultdict(new_item)
    for kind, rel, size, n, used, owner in files:
        if size >= min_size:
            add(items.setdefault((kind, rel), new_item()), size, used, owner, n)
        else:
            add(dirs[home(kind, rel)], size, used, owner, n)
    # Make sure every ancestor exists, then roll up deepest first.
    for d in list(dirs):
        while d not in (".", ""):
            d = posixpath.dirname(d) or "."
            dirs[d]
    leftover = new_item()
    for d in sorted(dirs, key=lambda d: -d.count("/") - (d != ".")):
        item = dirs[d]
        if item["bytes"] >= min_size and item["bytes"] > 0:
            merge(items.setdefault(("folder", d), new_item()), item)
        elif d == ".":
            leftover = item
        else:
            merge(dirs[posixpath.dirname(d) or "."], item)
    return items, leftover


def by_depth(files, depth, min_size):
    """Every file into its folder `depth` levels below the root."""
    groups, leftover = defaultdict(new_item), new_item()
    for kind, rel, size, n, used, owner in files:
        parts = home(kind, rel).split("/")
        key = "/".join(x for x in parts[:depth] if x != ".")
        if len(parts) < depth or not key:  # files above the grouping depth
            key = (key + "/" if key else "") + "(loose files)"
        add(groups[key], size, used, owner, n)
    items = {}
    for k, g in groups.items():
        if g["bytes"] >= min_size:
            items[("folder", k)] = g
        else:
            merge(leftover, g)
    return items, leftover


def main():
    p = argparse.ArgumentParser(description=__doc__.split("\n\n")[0])
    p.add_argument("csv", help="listing from file_list.sh / file_list.ps1")
    p.add_argument("--days", type=int, default=180,
                   help="an item is stale if nothing in it was used for this many days (default 180; "
                        "-1 lists everything)")
    p.add_argument("--min-size", type=parse_size, default="1G",
                   help="smallest file or folder to report, e.g. 500M, 1G (default 1G; 0 for all)")
    p.add_argument("--depth", type=int,
                   help="group by folders this many levels below the root instead of by size")
    p.add_argument("--time", choices=("latest", "modified", "access"), default="latest",
                   help="which time counts as 'used': the later of access and modified (default), "
                        "or just one. Use 'modified' if access times are unreliable")
    p.add_argument("--root", help="scanned root (default: common parent of all files)")
    p.add_argument("--top", type=int, default=40,
                   help="print only the largest N stale items (default 40; 0 for all); --out has all")
    p.add_argument("--out", help="also write the stale items to this CSV")
    a = p.parse_args()

    rows = []
    with open(a.csv, newline="", encoding="utf-8-sig") as f:
        for r in csv.DictReader(f):
            used = {"latest": max(r["last_access"], r["last_modified"]),
                    "modified": r["last_modified"],
                    "access": r["last_access"]}[a.time]
            # Older listings had one row per file and no kind/files columns.
            rows.append((r.get("kind") or "file", r["path"].replace("\\", "/").rstrip("/"),
                         int(r["size_bytes"]), int(r.get("files") or 1),
                         used, r["last_access"], r.get("owner") or "?"))
    if not rows:
        print("No items in listing.")
        return

    now = datetime.now()
    cutoff = (now - timedelta(days=a.days)).strftime(FMT)
    anchors = [path if kind == "folder" else posixpath.dirname(path) for kind, path, *_ in rows]
    if a.root:
        root = a.root.replace("\\", "/").rstrip("/")
    else:
        root = posixpath.commonpath(anchors) if len(rows) > 1 else anchors[0]

    # Without owners (e.g. Windows without -Owner), use the top-level folder,
    # which on shared drives is usually one per person.
    no_owner = all(r[6] == "?" for r in rows)
    files = []
    for kind, path, size, n, used, _, owner in rows:
        rel = posixpath.relpath(path, root)
        top = home(kind, rel).split("/")[0]
        files.append((kind, rel, size, n, used, top if no_owner and top != "." else owner))
    rolled_up = any(f[0] == "folder" for f in files)

    if a.depth:
        items, leftover = by_depth(files, a.depth, a.min_size)
        grouping = f"folders at depth {a.depth}"
    else:
        items, leftover = by_size(files, a.min_size)
        grouping = "files and folders"
    stale = sorted(((k, d) for k, d in items.items() if d["used"] < cutoff),
                   key=lambda kd: -kd[1]["bytes"])

    def owners(c):
        top = c.most_common()
        return top[0][0] + (f" (+{len(top) - 1})" if len(top) > 1 else "")

    def name(kind, key):
        if kind == "folder":
            return ("(top level)" if key == "." else key) + "/"
        return key

    total = sum(f[2] for f in files)
    stale_bytes = sum(d["bytes"] for _, d in stale)
    who = "top-level folder" if no_owner else "owner"
    print(f"Root:    {root}")
    print(f"Listed:  {sum(f[3] for f in files)} files, {human(total)}"
          + (" (items the listing rolled up; smaller ones were never listed)" if rolled_up else ""))
    print(f"Items:   {len(items)} {grouping} of at least {human(a.min_size)} "
          f"({human(leftover['bytes'])} in smaller ones not shown)")
    print(f"Stale:   {len(stale)} items, {human(stale_bytes)} "
          f"({100 * stale_bytes / max(total, 1):.0f}%) not used since {cutoff[:10]} "
          f"[{a.days} days, '{a.time}' time]")

    # Scanning can itself update access times (antivirus, indexing), which
    # would make everything look in use.
    if a.time != "modified":
        recent = (now - timedelta(days=2)).strftime(FMT)
        frac = sum(r[5] >= recent for r in rows) / len(rows)
        if frac > 0.5:
            print(f"\nWARNING: {frac:.0%} of files were accessed in the last 2 days. Access times may "
                  f"have been updated by the scan itself; consider --time modified.")

    if not stale:
        return
    shown = stale[:a.top] if a.top else stale
    print(f"\nStale items, largest {len(shown)} of {len(stale)} "
          f"(a folder's size counts only files not listed separately):\n")
    print(table(["size", "files", "last used", who, "path"],
                [[human(d["bytes"]), d["files"], d["used"][:10], owners(d["owners"]), name(*k)]
                 for k, d in shown]))

    totals = defaultdict(lambda: [0, 0])
    for _, d in stale:
        o = d["owners"].most_common(1)[0][0]
        totals[o][0] += d["bytes"]
        totals[o][1] += 1
    print(f"\nStale data by {who}:\n")
    print(table([who, "size", "items"],
                [[o, human(b), n] for o, (b, n) in sorted(totals.items(), key=lambda x: -x[1][0])]))

    if a.out:
        with open(a.out, "w", newline="", encoding="utf-8") as f:
            w = csv.writer(f)
            w.writerow(["kind", "path", "size_bytes", "files", "last_used", "main_" + who.replace(" ", "_"),
                        "all"])
            for (kind, key), d in stale:
                w.writerow([kind, root if key == "." else posixpath.join(root, key), d["bytes"],
                            d["files"], d["used"], d["owners"].most_common(1)[0][0],
                            ";".join(d["owners"])])
        print(f"\nWrote {len(stale)} stale items to {a.out}")


if __name__ == "__main__":
    main()

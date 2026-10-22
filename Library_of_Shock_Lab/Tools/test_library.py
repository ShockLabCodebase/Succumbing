"""Unit tests for library.py. Run from the repo root:
    python -m unittest discover -s Library_of_Shock_Lab/Tools
"""
import json
import tempfile
import unittest
from pathlib import Path

import library as L


def note(key, title, authors, year, doi=""):
    n = object.__new__(L.Note)
    n.path, n.key, n.body, n.errors = Path(f"{key}.md"), key, "", []
    n.meta = {"key": key, "title": title, "authors": authors, "year": year, "doi": doi}
    return n


class FrontmatterTests(unittest.TestCase):
    def test_parse_json_values(self):
        meta, body, errors = L.parse_frontmatter(
            '---\nkey: "a"\nyear: 2020\nmethods: ["SPOD", "POD"]\nparams: {"NPR": "2.1"}\n---\n# Body\n')
        self.assertEqual(errors, [])
        self.assertEqual(meta["year"], 2020)
        self.assertEqual(meta["methods"], ["SPOD", "POD"])
        self.assertEqual(meta["params"], {"NPR": "2.1"})
        self.assertEqual(body, "# Body\n")

    def test_parse_reports_bad_json(self):
        meta, _, errors = L.parse_frontmatter('---\nkey: a\n---\n')
        self.assertTrue(any("key" in e for e in errors))

    def test_missing_or_unclosed(self):
        self.assertIsNone(L.parse_frontmatter("# no frontmatter")[0])
        self.assertIsNone(L.parse_frontmatter('---\nkey: "a"\n')[0])

    def test_set_field_replaces_and_inserts(self):
        with tempfile.TemporaryDirectory() as d:
            p = Path(d) / "x.md"
            p.write_bytes(b'---\r\nkey: "x"\r\ncites: []\r\n---\r\nbody\r\n')
            L.set_field(p, "cites", ["a", "b"])
            L.set_field(p, "summary", "S")
            text = p.read_bytes().decode()
            self.assertIn('cites: ["a", "b"]\r\n', text)
            self.assertIn('summary: "S"\r\n---', text)
            self.assertTrue(text.endswith("body\r\n"))


class HelperTests(unittest.TestCase):
    def test_short_authors(self):
        self.assertEqual(L.short_authors(["Tam, C. K. W."]), "Tam")
        self.assertEqual(L.short_authors(["Raiola, M.", "Kriegseis, J."]), "Raiola & Kriegseis")
        self.assertEqual(L.short_authors(["Nogueira, P.", "A, B.", "C, D."]), "Nogueira et al.")

    def test_sort_surname_ignores_particles_and_accents(self):
        self.assertEqual(L.sort_surname("von Saldern, J."), "saldern")
        self.assertEqual(L.sort_surname("Brès, G. A."), "bres")

    def test_bib_escape_leaves_math(self):
        self.assertEqual(L.bib_escape("A & B_1 $M_j$ 50%"), r"A \& B\_1 $M_j$ 50\%")

    def test_pdf_key(self):
        self.assertEqual(L.pdf_key(L.PDFS / "Sub" / "x.pdf"), "Sub/x.pdf")
        self.assertTrue(L.pdf_key(Path(tempfile.gettempdir()) / "x.pdf").endswith("/x.pdf"))


class CitesTests(unittest.TestCase):
    def setUp(self):
        self.lib = [
            note("tam-1986", "Proposed relationship between broadband shock associated noise and screech tones",
                 ["Tam, C. K. W."], 1986),
            note("schmidt-2018", "Spectral analysis of jet turbulence", ["Schmidt, O. T."], 2018),
            note("towne-2018", "Spectral proper orthogonal decomposition and its relationship to dynamic mode "
                 "decomposition and resolvent analysis", ["Towne, A."], 2018, doi="10.1017/jfm.2018.283"),
            note("em-2018", "Upstream-travelling acoustic jet modes as a closure mechanism for screech",
                 ["Edgington-Mitchell, D."], 2018),
        ]
        self.citing = note("new-2024", "New", ["New, A."], 2024)

    def test_author_year_title(self):
        refs = ("TAM, C. K. W., SEINER, J. M. & YU, J. C. 1986 Proposed relationship between broadband shock "
                "associated noise and screech tones. J. Sound Vib. 110, 309-321.\n"
                "EDGINGTON-\nMITCHELL, D., JAUNET, V. 2018 Upstream-travelling acoustic jet modes as a closure "
                "mechanism for screech. J. Fluid Mech. 855, R1.")
        self.assertEqual(L.match_cites(self.citing, refs, self.lib), ["em-2018", "tam-1986"])

    def test_coauthor_with_other_title_is_not_matched(self):
        refs = ("Towne, A., Schmidt, O. T. & Colonius, T. 2018 Spectral proper orthogonal decomposition and "
                "its relationship to dynamic mode decomposition and resolvent analysis. JFM 847.")
        self.assertEqual(L.match_cites(self.citing, refs, self.lib), ["towne-2018"])

    def test_doi_match_and_future_papers_skipped(self):
        refs = "see doi 10.1017/JFM.2018.283"
        self.assertEqual(L.match_cites(self.citing, refs, self.lib), ["towne-2018"])
        old = note("old-2000", "Old", ["Old, A."], 2000)
        self.assertEqual(L.match_cites(old, refs, self.lib), [])

    def test_refs_section(self):
        text = "Intro\nReferences\nTam 1986\n"
        self.assertEqual(L.refs_section(text).strip(), "Tam 1986")


class LibraryTests(unittest.TestCase):
    """Checks on the real library: every note parses and builds."""

    def test_all_notes_parse(self):
        bad = [n.key for n in L.load_notes() if n.meta is None or n.errors]
        self.assertEqual(bad, [])

    def test_render(self):
        notes = L.load_notes()
        _, topics = L.load_vocab()
        self.assertIn("## Papers", L.render_index(notes, topics))
        self.assertEqual(L.render_bib(notes).count("\n@"), len(notes))


if __name__ == "__main__":
    unittest.main()

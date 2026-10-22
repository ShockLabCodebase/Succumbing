---
name: enact-queue
description: Implement every queued request in an app's FEATURE_QUEUE.md (Apps/Source_Files/<App>/), then bump the version, build and verify once for the whole batch. Use when the user runs /enact-queue, or says "do the queued changes", "build the queue", "time for a new SPODViewer build".
argument-hint: "[app] [Q-ids to include, default all]"
---

# Build the queued requests

The queue is `Apps/Source_Files/<App>/FEATURE_QUEUE.md` (written by `/queue`). The point is one version bump, one build and one verification for the whole batch, so implement and test everything from source first and build only at the end.

## 1. Read the queue and settle questions up front

- Pick the app as `/queue` does (named, the only non-empty queue, or ask). Take every item under `## Queued`, or only the IDs the user named.
- Read the app's README (build, tests, version history) and the project CLAUDE.md entry for the app. For SPODViewer that means: `spodviewer` conda env, `__version__` in `spodviewer/__init__.py`, the README "Versions" list, `USER_GUIDE.md`, `build.bat`, `--selftest`, `tests/smoke_test.py`.
- Re-check each item against the current source; anything already done goes straight to Done with a note.
- Collect every "Open:" question, plus any new ones from reading the code, and ask them **all in one AskUserQuestion call** (several questions are fine) before writing code. Note the answers in each entry's Notes.
- Order the items so that ones touching the same code go together. If two conflict, say so in the questions.

## 2. Implement, testing from source

Keep the task list to one step per item, then "Version, docs, build", "Verify build", "Commit".

For each item:
1. Implement it, following the app's existing code style.
2. Run the source-level tests that cover it (for SPODViewer: the relevant `tests/*.py`, `tests/smoke_test.py` on a synthetic file from `tests/make_synthetic.py` or on data in `Test_Data/`; smoke_test drives the UI headlessly). Add or extend a test when the item adds behaviour that no test reaches.
3. Fix failures before moving on. If an item turns out much bigger than it looked, or needs a decision, ask then rather than guessing; if the user defers it, leave it under Queued with a note on what was learned.

Don't build between items.

## 3. Version, docs, build

Once all items pass from source:
- Bump the version once (minor bump for new features, patch bump for fixes only, unless the user says otherwise).
- Add one entry to the README "Versions" list covering every item in the batch (dated), and update the README developer notes and `USER_GUIDE.md` for everything users see.
- Build once (`build.bat` for SPODViewer, from the env in CLAUDE.md; run it in the background, as it takes a few minutes).

## 4. Verify the build

Run the built exe's self-test (`dist\SPODViewer_<version>\SPODViewer.exe --selftest <file> <out>`) and `tests/smoke_test.py`, and look at the PNG the self-test writes. If the build fails, fix it and rebuild the same version (delete the half-made `dist` folder first).

## 5. Close out

- Move each built item from `## Queued` to `## Done` as `- Q-004 · Short title → 0.5 (2026-10-21)`, with a line on anything built differently from the request or dropped. Items not built stay under Queued.
- Commit source, docs, tests and the queue file together, directly to main (`SPODViewer 0.5: Q-004, Q-005, Q-007`, with a one-line summary per item in the body), and push. The build folders in `Apps/` are not in Git.
- Report per item: what changed, how it was tested, and anything left over; give the path of the new build folder.

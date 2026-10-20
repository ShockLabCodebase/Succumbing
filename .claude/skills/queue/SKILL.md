---
name: queue
description: Add a feature request or bug fix for one of the user's apps (SPODViewer, FieldsPlayer or any later app in apps/Source_Files/) to that app's FEATURE_QUEUE.md, without implementing or building it. Use when the user runs /queue, or says "queue this", "add to the queue", "for the next build", "not now, but later the viewer should…". Also use /queue with no request to list what is queued.
argument-hint: "[app] <request>"
---

# Queue a request for the next build

Each app keeps its queue next to its source: `apps/Source_Files/<App>/FEATURE_QUEUE.md`. Queued items are built together later by `/enact-queue`, so one version bump and one build cover them all. **Do not change the app's code here, and do not build.**

## 1. Pick the app

- If the request names an app, use it. If it doesn't and only one app has a `FEATURE_QUEUE.md`, or the request is clearly about one app (e.g. waterfall, mode cache, SPOD modes → SPODViewer), use that one.
- Otherwise ask which app.
- If the app has no `FEATURE_QUEUE.md` yet, create one by copying the header and empty sections of `apps/Source_Files/SPODViewer/FEATURE_QUEUE.md`, with the app's name in the title.

## 2. With no request: list the queue

If the user gave no request (`/queue`, `/queue SPODViewer`, "what's queued?"), list the queued items of the app (or every app with a non-empty queue): ID, title and any open questions. Stop there.

## 3. Write the entry

Append under `## Queued` (newest last), with the next free ID: one more than the highest `Q-NNN` anywhere in that file, Done included.

```markdown
### Q-004 · Short title (added 2026-10-21)
Request: the user's words, kept close to verbatim; tidy only obvious typos.
Notes: likely files/functions (a quick Grep is fine, at most a minute or two of looking); interactions with other queued items; "Open: …" for any decision the request leaves to the user.
```

- One entry per independent request. If the user lists several, split them.
- If the request duplicates or contradicts a queued item, say so and ask whether to merge it into that entry (edit the entry, keeping both sets of words) or keep both.
- If it is already done in the current source, say so instead of queuing it.
- Don't ask the open questions now unless the request can't be written down without the answer; `/enact-queue` asks them all in one go.

## 4. Commit

Commit only the queue file, directly to main (`Queue <App> Q-004: short title`), and push. Then reply in a line or two: the ID, the title, any open question noted, and how many items are now queued for that app.

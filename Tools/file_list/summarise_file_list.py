"""Find data that has been parked: folders nobody has used for a while.

Reads a CSV from file_list.sh or file_list.ps1, groups files into folders a
given depth below the scanned root, and reports the folders whose newest file
is older than a cutoff, largest first, with who owns them. Standard library
only, so it runs with any Python 3.8+ on Windows or M3.

Usage:
    python summarise_file_list.py listing.csv [--days 180] [--depth 1]
                                  [--time latest|modified|access] [--out stale.csv]
"""

import argparse
import csv
import posixpath
from collections import Counter, defaultdict
from datetime import datetime, timedelta

FMT = "%Y-%m-%d %H:%M:%S"


def human(n):
    for unit in ("B", "KB", "MB", "GB", "TB"):
        if n < 1024 or unit == "TB":
            return f"{n:.0f} {unit}" if unit == "B" else f"{n:.1f} {unit}"
        n /= 1024


def table(headers, rows):
    widths = [max(len(str(x)) for x in col) for col in zip(headers, *rows)]
    line = lambda r: "  ".join(str(x).ljust(w) for x, w in zip(r, widths)).rstrip()
    return "\n".join([line(headers), line(["-" * w for w in widths])] + [line(r) for r in rows])


def main():
    p = argparse.ArgumentParser(description=__doc__.split("\n\n")[0])
    p.add_argument("csv", help="listing from file_list.sh / file_list.ps1")
    p.add_argument("--days", type=int, default=180,
                   help="a folder is stale if nothing in it was used for this many days (default 180)")
    p.add_argument("--depth", type=int, default=1,
                   help="group by folders this many levels below the scanned root (default 1)")
    p.add_argument("--time", choices=("latest", "modified", "access"), default="latest",
                   help="which time counts as 'used': the later of access and modified (default), "
                        "or just one. Use 'modified' if access times are unreliable")
    p.add_argument("--root", help="scanned root to group folders below "
                                  "(default: common parent of all files)")
    p.add_argument("--out", help="also write the stale folders to this CSV")
    a = p.parse_args()

    files = []
    with open(a.csv, newline="", encoding="utf-8-sig") as f:
        for r in csv.DictReader(f):
            used = {"latest": max(r["last_access"], r["last_modified"]),
                    "modified": r["last_modified"],
                    "access": r["last_access"]}[a.time]
            files.append((r["path"].replace("\\", "/"), int(r["size_bytes"]),
                          used, r["last_access"], r.get("owner") or "?"))
    if not files:
        print("No files in listing.")
        return

    now = datetime.now()
    cutoff = (now - timedelta(days=a.days)).strftime(FMT)
    if a.root:
        root = a.root.replace("\\", "/").rstrip("/")
    elif len(files) > 1:
        root = posixpath.commonpath([posixpath.dirname(f[0]) for f in files])
    else:
        root = posixpath.dirname(files[0][0])

    folders = defaultdict(lambda: {"bytes": 0, "files": 0, "used": "", "owners": Counter()})
    for path, size, used, _, owner in files:
        parts = posixpath.relpath(posixpath.dirname(path), root).split("/")
        key = "/".join(x for x in parts[:a.depth] if x != ".")
        if len(parts) < a.depth or not key:  # files above the grouping depth
            key = (key + "/" if key else "") + "(loose files)"
        d = folders[key]
        d["bytes"] += size
        d["files"] += 1
        d["used"] = max(d["used"], used)
        d["owners"][owner] += size

    stale = sorted(((k, d) for k, d in folders.items() if d["used"] < cutoff),
                   key=lambda kd: -kd[1]["bytes"])

    def owners(c):
        top = c.most_common()
        return top[0][0] + (f" (+{len(top) - 1})" if len(top) > 1 else "")

    total = sum(f[1] for f in files)
    stale_bytes = sum(d["bytes"] for _, d in stale)
    print(f"Root:    {root}")
    print(f"Files:   {len(files)}, {human(total)} in {len(folders)} folders (depth {a.depth})")
    print(f"Stale:   {len(stale)} folders, {human(stale_bytes)} "
          f"({100 * stale_bytes / max(total, 1):.0f}%) not used since {cutoff[:10]} "
          f"[{a.days} days, '{a.time}' time]")

    # Scanning can itself update access times (antivirus, indexing), which
    # would make everything look in use.
    if a.time != "modified":
        recent = (now - timedelta(days=2)).strftime(FMT)
        frac = sum(f[3] >= recent for f in files) / len(files)
        if frac > 0.5:
            print(f"\nWARNING: {frac:.0%} of files were accessed in the last 2 days. Access times may "
                  f"have been updated by the scan itself; consider --time modified.")

    if not stale:
        return
    print("\nStale folders, largest first:\n")
    print(table(["size", "files", "last used", "owner", "folder"],
                [[human(d["bytes"]), d["files"], d["used"][:10], owners(d["owners"]), k]
                 for k, d in stale]))

    by_owner = defaultdict(lambda: [0, 0])
    for _, d in stale:
        o = d["owners"].most_common(1)[0][0]
        by_owner[o][0] += d["bytes"]
        by_owner[o][1] += 1
    print("\nStale data by owner (each folder counted under its main owner):\n")
    print(table(["owner", "size", "folders"],
                [[o, human(b), n] for o, (b, n) in sorted(by_owner.items(), key=lambda x: -x[1][0])]))

    if a.out:
        with open(a.out, "w", newline="", encoding="utf-8") as f:
            w = csv.writer(f)
            w.writerow(["folder", "size_bytes", "files", "last_used", "main_owner", "all_owners"])
            for k, d in stale:
                w.writerow([posixpath.join(root, k), d["bytes"],
                            d["files"], d["used"], d["owners"].most_common(1)[0][0],
                            ";".join(d["owners"])])
        print(f"\nWrote {len(stale)} stale folders to {a.out}")


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Inject a 'back to the index' link into a published report.

A reader almost never arrives at the index. They are sent one report in a chat
message, read it, and have no way to discover the other five. This adds a small
fixed link, bottom left, that takes them to the index.

Bottom LEFT on purpose: every report already carries its own floating controls
(ratings, theme, contents) stacked at bottom right, and the count varies per
report, so the left side is the only collision-free corner.

It styles itself from the report's OWN CSS variables, so it follows whichever
theme the reader has selected without knowing anything about them.

Idempotent: re-running replaces the existing block rather than stacking another.

Usage:  home-link.py <report.html> [<report.html> ...]
"""
import re
import sys

OPEN = "<!-- eqdd-home-link -->"
CLOSE = "<!-- /eqdd-home-link -->"

BLOCK = f"""{OPEN}
<style>
  #eqdd-home{{
    position:fixed; left:16px; bottom:16px; z-index:1001;
    display:inline-flex; align-items:center;
    background:var(--card); border:1px solid var(--border2); color:var(--muted);
    font-family:var(--g-m, ui-monospace, "SF Mono", Menlo, Consolas, monospace);
    font-size:11px; letter-spacing:.08em; text-transform:uppercase;
    padding:8px 12px; text-decoration:none;
    box-shadow:0 6px 22px rgba(0,0,0,.5);
    transition:color .18s ease, border-color .18s ease;
  }}
  #eqdd-home:hover{{color:var(--text); border-color:var(--accent); text-decoration:none}}
  #eqdd-home:focus-visible{{outline:1px solid var(--accent); outline-offset:3px}}
  @media (max-width:760px){{
    #eqdd-home{{left:10px; bottom:10px; font-size:10px; padding:7px 10px}}
  }}
  @media print{{ #eqdd-home{{display:none}} }}
</style>
<a id="eqdd-home" href="./" title="All published deep dives">All reports</a>
{CLOSE}"""

EXISTING = re.compile(re.escape(OPEN) + r".*?" + re.escape(CLOSE), re.S)


def inject(path):
    html = open(path, encoding="utf-8").read()

    # Replace an earlier block rather than adding a second one.
    if OPEN in html:
        html = EXISTING.sub(BLOCK, html)
        open(path, "w", encoding="utf-8").write(html)
        return "refreshed"

    m = re.search(r"<body[^>]*>", html, re.I)
    if not m:
        return "SKIPPED: no <body> tag"

    at = m.end()
    open(path, "w", encoding="utf-8").write(html[:at] + "\n" + BLOCK + html[at:])
    return "added"


if __name__ == "__main__":
    if len(sys.argv) < 2:
        sys.exit(__doc__.strip().splitlines()[-1])
    bad = 0
    for p in sys.argv[1:]:
        result = inject(p)
        print(f"{result:10s} {p.rsplit('/', 1)[-1]}")
        if result.startswith("SKIPPED"):
            bad = 1
    sys.exit(bad)

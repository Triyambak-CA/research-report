#!/usr/bin/env python3
"""Assemble the modular report source into one self-contained HTML file."""
import sys, pathlib

def build(src_dir, out_path):
    src = pathlib.Path(src_dir)
    rd = lambda n: (src / n).read_text(encoding="utf-8")
    parts = ["head.html", "toc.html", "hero.html", "exec.html"]
    parts += [f"s{i:02d}.html" for i in range(1, 21)]
    parts += ["sources.html"]
    html = "\n".join(rd(p) for p in parts)
    html = html.replace("__CSS__", rd("style.css"))
    html = html.replace("__JS__", rd("app.js"))
    pathlib.Path(out_path).write_text(html, encoding="utf-8")
    return len(html)

if __name__ == "__main__":
    n = build(sys.argv[1], sys.argv[2])
    print(f"built {sys.argv[2]} ({n} chars)")

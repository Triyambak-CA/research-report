# Design

The visual world of the published site (`equity-deep-dives`). The page is
generated, so every rule below lives in `site-template.html`, never in the
`index.html` it produces.

## The world: inherited, not invented

The index does not have a look of its own. It inherits the reports' world
verbatim, because the index exists to hand a visitor to a report and a change of
skin at that boundary reads as two different sites.

Concretely, the index copies the reports' token blocks, faces, canvas treatment
and floating control. A bahi khata direction was built here first and dropped for
exactly this reason: it was a good page that did not belong to the reports.

Anything that changes in a report's theme should be mirrored here by hand. There
is no shared stylesheet, because each report is a standalone self-contained file.

## Themes

Two, same names and same tokens as the reports, with **glass as the default**,
matching `<html data-theme="glass">` in the reports themselves.

| Token | Glass (default) | Terminal |
|---|---|---|
| `--accent` | `#a0a0d2` | `#ffb000` |
| `--bg` | `#070707` | `#05070a` |
| `--card` | `rgba(16,16,16,.72)` | `#0a0e13` |
| `--border` | `rgba(255,255,255,.07)` | `#182029` |
| `--border2` | `rgba(255,255,255,.13)` | `#243244` |
| `--bright` | `#e0e0e0` | `#eef4fa` |
| `--text` | `rgba(224,224,224,.52)` | `#c3ceda` |
| `--muted` | `rgba(224,224,224,.34)` | `#647689` |
| `--dim` | `rgba(224,224,224,.2)` | `#3a4756` |
| grid pitch | 64px | 34px |

Three tokens are local to the index and carry the display voice per theme, since
the two worlds want different scale: `--d-size`, `--d-weight`, `--d-space`.

## Type

From Google Fonts, the same three families the reports load: Cormorant Garamond
for display, Inter for body, JetBrains Mono for meta, figures and labels. Terminal
sets all three to JetBrains Mono, as the reports do.

This page therefore makes external font requests. That is deliberate: matching the
reports matters more here than being offline-safe, and the reports already do it.

## Canvas

Black ground carrying a faint one-pixel grid at the theme's pitch, with a
`body::before` layer at 95.5% opacity knocking it back so it reads as texture
rather than as a graticule. Lifted from the reports unchanged.

## Structure

- Masthead: display title, a lede at 62ch, then a mono meta rail using `//` as
  the separator, which is the reports' own punctuation.
- Register: a plain table. Entry number, company, one-line note, as-at date.
  Rules are `--border` between rows and `--border2` under the head.
- The number is the order each entry was written, so the oldest is 01. Adding a
  newer entry never shifts them; unpublishing one closes the gap and renumbers,
  which is intended, since a struck entry leaves no hole in the register.
- `table-layout: auto`, not `fixed`. Under `fixed` Chrome leaves the slack
  unassigned and the notes column collapses to half its width.
- Under 720px the table stacks: head hidden, rows become blocks, the entry number
  sits absolutely at the left. Verified with no horizontal scroll.

## Control

One floating button, bottom right, using the reports' own `.ctl` shape: card
background, `--border2` hairline, 11px letterspaced uppercase mono, the value in
the accent colour, accent border on hover.

The choice persists in `localStorage` under `eqdd_theme`, wrapped in try/catch.
**Known limitation:** each report stores its own theme under its own key
(`southwest_theme` and so on), so a theme chosen on the index does not follow the
visitor into a report. Unifying that means editing every report file.

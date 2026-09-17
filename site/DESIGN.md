# Design

The visual world of the published site (`equity-deep-dives`), written from the
built page. The page is generated, so every rule below lives in
`site-template.html`, never in `index.html`.

## The world

A bahi khata: the Indian trader's cloth-bound running account book. A chartered
accountant keeps a running account of companies examined, and each company is a
dated entry in an open account rather than a verdict. This is what makes the
product's own positioning legible before a word is read, because a khata records
and never advises.

It is deliberately the opposite of the dark brokerage terminal this site shipped
first and failed with: neon tickers, a graticule crossing the text, glowing
figures. That look is the anti-reference, not a fallback.

## Palette

| Token | Value | Role |
|---|---|---|
| `--cloth` | `#A32A1C` | Binding board. Owns a whole region, about a quarter of the desktop surface and the top band on a phone. Never an accent. |
| `--cloth-ink` | `#FBF4E9` | Everything reversed out of the cloth. |
| `--paper` | `#F6F1E6` | Unbleached ledger page, the reading field. |
| `--paper-edge` | `#EDE5D4` | The desk the book sits on. |
| `--ink` | `#211F1A` | Primary text. 14.6:1 on paper. |
| `--ink-soft` | `#6B6354` | Secondary text, tinted from the paper hue and never gray. 5.3:1. |
| `--rule` | `#D8C3B3` | Column and row rules. |
| `--rule-strong` | `#211F1A` | The heavy rule under the column heads, and the double rule closing the account. |

Light, not dark, because the use scene is a phone opened from a chat message in
daylight as often as a desk at night. Text on cloth holds at least 4.5:1; the
plate labels were raised from 62% to 86% opacity after measuring 3.44:1.

## Type

One face, a serif stack of Iowan Old Style, Charter and Georgia. No external
fonts load, so the world's voice comes from material (cloth, rules, folio,
reversal), not from a display typeface.

**One size for the whole page: 15px.** Rank is carried by weight, case, reversal
and rule, never by size. This is the discipline the failed page lacked, where
five competing sizes fought each other. The only exception is the title on the
binding board, which is a different plane from the page.

`font-variant-numeric: tabular-nums` is set on `body`, so folios and dates align
in their columns.

## Structure

- Column rules **bound** the columns; text sits inside them with 10px padding and
  is never crossed. The old page drew a graticule straight through its own text.
- The folio is the order each entry was written, so the oldest is 01 and numbers
  never shift when a newer entry goes in above. Unpublishing one does close the
  gap and renumber, which is the intended reading: a struck entry leaves no hole
  in the register.
- A closed account is ruled off twice, which is what `.ruled-off` draws under the
  last entry.
- The binding board is `position: sticky` on desktop, so it stays put while the
  pages move under it. On a phone it becomes a compact cover band; left sticky and
  full height it filled the whole screen and pushed every entry below the fold.
- The register table uses `table-layout: auto`. Under `fixed`, Chrome leaves the
  slack unassigned and the notes column collapses to half its space.

## Motion

One authored moment: hovering or focusing an entry draws a vermilion rule under
it from the gutter outward, like a pen underlining a line already read.
Exponential ease-out over 420ms, and it does not run under
`prefers-reduced-motion`.

## Browser surfaces

Selection is cloth on paper-white. Focus rings are cloth at 2px with a 3px
offset. Link underlines use the rule colour at a 3px offset.

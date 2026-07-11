# HTML Design System

Deliver the entire report as ONE self-contained HTML file. All CSS inline in a single `<style>` block, all JS (if any) inline vanilla - no frameworks, no CDN dependencies except Google Fonts. The file must open perfectly from a local double-click and render well on both desktop and mobile.

Follow this system exactly - do not substitute a generic template.

## Aesthetic direction
A Bloomberg-style trading terminal / research desk. Near-black canvas, phosphor colouring, everything set in a monospaced typeface, ultra-dense tabular data, zero rounded corners, hairline borders. It should read like a live desk terminal, not a document or a SaaS landing page. Refined and legible, not a gimmick - the density and the mono grid do the work.

## Accent
A single fixed accent `#ffb000` (amber), defined once as `--accent` and used for section tags, links, active states, the scroll-progress bar, table headers, list markers, key metric emphasis, and the blinking cursor after the H1.

## Palette
- Background `#05070a` (near-black), with a faint monospace grid texture (see micro-details)
- Cards / panels `#0a0e13`; darker panel `#0b1017` for table headers and captions
- Hairline borders `#182029` (all card, table, and divider lines)
- Primary text `#c3ceda`, bright text `#eef4fa` (headings, key numbers, bold), secondary text `#647689`
- Semantic colours used throughout regardless of accent: bull green `#23d18b`, bear red `#ff5c57`, caution amber `#ffb000` (same as accent - amber doubles as the caution signal, terminal-style). Used for hit/miss/watch chips, headwind/tailwind tags, scenario cards, status dots, moat badges.

## Typography
- "JetBrains Mono" for EVERYTHING - company name, section titles, body, tables, tickers, numbers, pull-quotes. Load weights 400, 500, 700, 800. Apply `font-variant-numeric: tabular-nums` globally.
- Base body size ~14px, line-height ~1.6 - compact and information-dense.
- Headings are UPPERCASE: company name ~52px/800, section titles ~25px/800, sub-heads ~14.5px/700. Body stays normal case.
- Company name (H1) gets a blinking amber cursor `_` appended via `::after` (1.1s steps blink).
- NO ghost section numerals. Instead, each section opens with a small inline tag rendered as a bordered amber chip reading `// SECTION 0X` (uppercase, letter-spaced, 1px amber-tinted border). Sub-heads (h3) get a `> ` amber prefix.

## Required components
1. Hero banner: company name in large uppercase mono with the blinking cursor; a bordered amber eyebrow tag ("BUY-SIDE DEEP DIVE // NOT A RECOMMENDATION"); ticker + exchange + date in mono; and a horizontal price-scenario bar showing bear-base-bull targets as a gradient track (bear-red to amber to bull-green) with a bright marker at CMP. Keep the CMP label above the bar and the bear/base/bull ticks below it, well clear of the caption row.
2. Executive summary strip: a grid of stat cards (target range, upside/downside per scenario, earnings quality score, guidance credibility ratio, moat strength). Bright mono values; bull/bear/amber colour variants for signalling.
3. Sticky slim table of contents (left rail on desktop, hidden under 960px) with the 15 numbered sections; uppercase mono; highlight the active section on scroll with a few lines of vanilla JS - active row gets a bright label, an amber left-border, and a faint amber wash.
4. Earnings quality score rendered as a 10-segment bar; filled segments in amber with a soft glow, empty segments in border colour. Zero radius.
5. 6 Cs moat grid: six cards each with a durability badge (strong / moderate / weak / none) as a bordered chip in green / amber / red / muted.
6. Guidance scorecard and all data tables: full hairline grid (row AND column borders), amber uppercase sticky headers on the darker panel, mono tabular figures right-aligned (first column left), subtle amber row-hover, caption pinned at the bottom on the darker panel. Coloured chips for hit / miss / overachieved / partial.
7. Red-flag callouts: card with a 3px left rule (bear-red, bull-green, or amber depending on severity) and an uppercase coloured label prefixed with `! `.
8. Bull / base / bear scenario cards with a coloured top border, probability weight, big mono price, and one-line key assumption.
9. Monitorables dashboard: metric cards showing the threshold in mono with a glowing status dot (red / amber / green).
10. Trigger calendar: a simple 4-quarter horizontal grid of cards.
11. Footer: source list (each item with a hairline left tick), a disclaimer box, and a "generated on DD-MMM-YYYY, data as of [latest quarter]" line in mono.

## Micro-details
- Thin 2px scroll-progress bar at the top in amber with a soft glow.
- Compact rhythm: ~46px section spacing, ~14px card padding, ~7px table cell padding; max content width ~1080px inside a ~1340px layout that carries the sticky rail.
- Faint monospace grid texture on the background: 34px lines in border colour under a ~95.5% opaque background layer, plus a very subtle amber radial glow in the top-right.
- ZERO border-radius anywhere. Hairline (1px) borders only. No drop shadows except faint accent/signal glows on the progress bar, eq segments, and status dots.
- Tables: full hairline grid, no zebra striping, amber uppercase headers, mono tabular numerals.
- Style the webkit scrollbar dark to match.
- Hyphens only, never em dashes, including in HTML entities (no `&mdash;` / `&ndash;`).

## Business model / value-chain components
When the report includes the Business Model and Value Chain primer, render it visually, never as prose walls:
- **Value-chain flow** - a 4-stage horizontal band `INPUTS -> WHAT THE COMPANY DOES -> CUSTOMERS -> END USE`, each stage a hairline-bordered cell with an amber dotted-square header and a short bulleted list, joined by amber `>` chevrons; stacks vertically with down-chevrons under ~760px.
- **Segment block** - one per business segment: a header row (darker panel) with the segment name in uppercase, a plain one-line descriptor beneath it, and a revenue-share chip on the right; the body holds the value-chain flow plus an input / role / customer / end-use detail grid.
- **Revenue-mix bar** - a single horizontal stacked bar of segment shares in distinct but palette-consistent hues, with a labelled key beneath.
- **Unknown-unknowns callout** - an amber left-ruled box titled with a `?` prefix, listing the non-obvious dependencies for that segment or the business as a whole.
Keep the terminal aesthetic throughout: zero radius, hairline borders, mono type, amber accents, green/red/amber only for signalling.

## Interactive controls
Reader-facing toggles are allowed as small fixed terminal-styled controls (bottom-right), each persisting its state in `localStorage` and degrading gracefully if storage is blocked. Standard one: a **Ratings toggle** that shows/hides the qualitative verdict badges (the 6 Cs moat Weak/Moderate/Strong/None pills) via a `body.badges-off .badge{display:none}` class, so the reader can strip the opinion layer and see only the underlying evidence. Hide such controls in `@media print`.

## Length
Comprehensive - do not compress the analysis to fit the design; the design must carry a long document.

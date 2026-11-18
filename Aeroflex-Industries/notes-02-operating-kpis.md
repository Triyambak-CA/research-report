# Aeroflex Industries: operating KPIs (notes-02)

Built from local source files only (source-docs/calls and source-docs/company). Figures are as printed by the company unless marked "computed".
Status tags: "image" = rendered page image; "text" = pdftotext text layer; "OCR" = damaged, not used.

## 0. Scope of this pass (read first)

- DONE: (b) liquid cooling skid table; (c) Q1FY25 deck restatement; (d) order-book search; (e) capacity history.
- NOT DONE: (a) the full deck-by-deck KPI table (segment mix %, export %, export geography %, SKU count, employee count, customer count, utilisation by quarter). Reason: the Q2FY27 deck's pie-chart percentages do not survive text extraction (they appear as loose numbers, e.g. "25% 24%", "48% 47%"). They need a rendered-image read of the deck pages. Not guessed here.
- NOT DONE: silent-restatement check for the other decks. Only Q1FY25 was diffed.

## (a) Partial: Q2FY27 deck, KPIs visible in text

- Deck: source-docs/calls/Q2FY27-deck.txt. Slide 6 "Key Operational Highlights - Consolidated" (line 166). Values for "Product Segment Domestic : Export Mix", "SS Flexible Hoses Geographical Split : Exports" and "Americas (North + South) / Europe / Others" are at lines 168-212. NOT READ RELIABLY: needs image read.
- Segments named on the slide: "SFN Skid Assemblies", "SS Flexible Hoses", "Assemblies & Others*" with footnote "*Others include fittings, metal bellows" (around line 211).
- Consolidated P&L slide, Q2FY27 vs Q2FY26 vs Q1FY27 vs H1: revenue 207.36 / 110.87 / 145.38 / 352.74 / 195.21 (Rs crore; text layer; matches notes-01 Section 1).
- R&D labels: "90+ R&D Team Members" and "29 NABL-accredited R&D Lab" (Q2FY27-deck.txt around lines 655-668, text). Number placement in the layout is ambiguous; confirm on the slide image before quoting.
- Capacity statement: "Successfully completed capacity expansion of the SS Hose & Braiding Division to 20 million meters p.a. and Liquid Cooling Skid Assemblies to 12,000 pieces p.a." (Q2FY27-deck.txt lines 117-118).

## (b) Liquid cooling skid table (units, average price, value)

Source: Q2FY27-deck.txt lines 497-516 (text; slide 17 "Aeroflex's Liquid Cooling Skid Business"). Columns printed: Period | Volume (skid) | Average price per skid (Rs) | Value (Rs Crs).

| Period | Volume (skids) | Average price per skid (Rs) | Value (Rs crore) | Check (computed: volume x price) |
|---|---|---|---|---|
| Q2FY27 | 1,475 | 3,39,196 | 50.03 | 50.03 |
| Q1FY27 | 1,040 | 3,11,459 | 32.39 | 32.39 |
| Q4FY26 | 571 | 3,31,763 | 18.94 | 18.94 |
| Q3FY26 | 46 | 4,98,861 | 2.29 | 2.29 |

- Footnote on the same slide (line 515): "*Selling price of a skid typically ranges between Rs 1,10,000 and Rs 5,50,000 per skid, depending on specifications and requirements."
- Earlier skid volume or price disclosures: none found in the Q2FY27 deck table itself. Other decks and intimations were not searched for skid volume or price in this pass.
- Skid value Q2FY27 50.03 Rs crore against consolidated revenue 207.36 Rs crore = about 24% (computed). Skid revenue is not separately reported in the financial results.
- Q4FY26 call (Q4FY26-transcript.txt lines 245-262) says the skid order book is not shared (see (d), item 6).

## (c) Silent-restatement check

### c.1 Q1FY25-deck.txt vs Q1FY25-deck-revised.txt

Whole-file diff ignoring whitespace (diff -wB). It shows: (i) cover letter changes ("Quarterly Earning Updates" becomes "Revised Quarterly Earning Updates"); (ii) digital-signature block re-wrapping (no content change); (iii) the P&L table changes below.

Consolidated P&L table, slide "Consolidated Profit & Loss Statement", prior-year column "Q1 FY24", Rs crore:

| Line | Q1FY25-deck.txt (original) | Q1FY25-deck-revised.txt (revised) | Change |
|---|---|---|---|
| Exceptional item (gain)/loss, Q1 FY24 column | "-" (nil) | "-0.16" | New item of -0.16 |
| Profit before tax, Q1 FY24 | 14.54 | 14.70 | +0.16 |
| PBT margin, Q1 FY24 | 17.32% | 17.51% | +19 bps |
| Profit after tax, Q1 FY24 | 10.93 | 11.09 | +0.16 |
| PAT margin, Q1 FY24 | 13.02% | 13.21% | +19 bps |
| PBT YoY growth (Q1 FY25 vs Q1 FY24) | 14.83% | 13.57% | restated base |
| PAT YoY growth (Q1 FY25 vs Q1 FY24) | 13.56% | 11.91% | restated base |

- Q1 FY25 (current quarter) does NOT change: PBT 16.69, tax 4.28, PAT 12.41, EBITDA 19.13, in both files.
- Q1 FY24 tax (3.61) is unchanged in both files.
- Arithmetic (computed): 14.70 - 3.61 = 11.09 (revised); 14.54 - 3.61 = 10.93 (original).
- The change is labelled only by the word "Revised" in the cover letter (revised file, line 11). The deck gives no explanation for the -0.16 item and does not flag the prior-year figures as restated.

### c.2 Other decks

Not diffed in this pass.

## (d) Order book, order backlog, orders in hand, order inflow, pending orders: every hit

Search: grep -rniE 'order ?book|order ?backlog|orders? in hand|order ?inflow|pending orders?' across source-docs (all .txt). The company/ and ar/ folders repeat the annual report text; only the annual report hits are listed. One hit under source-docs/peers/ (senior-fy25-results.txt line 449, Boeing backlog) is a peer company document and is excluded.

Company statements (Aeroflex speakers):
1. calls/Q4FY25-transcript.txt line 365 (Asad Daud): "so our order book is quite strong from America." Context: US orders delayed in the prior year.
2. calls/Q1FY26-transcript.txt line 475 (Asad Daud): "In terms of Hyd-Air and bellows, obviously, the scale at which they are, right now, the order book is small."
3. calls/Q1FY26-transcript.txt line 490 (Asad Daud): answer opens "Yes. So those order book are -- so we have -- we divide our orders." Rest of the answer not read.
4. calls/Q2FY26-transcript.txt line 432 (answer block; speaker label not printed in the extract, context is the bellows answer): "we have about approximately INR2 crores to INR2.5 crores orders in hand of bellows from the other markets, which includes Europe, Canada, and South America."
5. calls/Q3FY26-transcript.txt line 179 (outlook remarks; speaker label not in the extract): "The outlook for the remaining quarter of this financial year is very good. We are supported by our healthy order book, strong customer relationships and increasing penetration in global data center and AI infrastructure market."
6. calls/Q4FY26-transcript.txt lines 245-262 (Asad Daud, answering on skids): "since right now, we are dealing with one specific or only one particular supplier due to disclosure agreements, we'll not be able to share the order book with them that we have. But yes, we have a vision for the entire year that they have shared with us." The same answer says the supplier gives a yearly pipeline broken into quarterly POs.
7. company/Update_on_receipt_of_new_order_for_the_Aeroflex_Bellow_Division.txt (Regulation 30 letter dated October 16, 2025): "our company has received a new order valued at approximately INR 7.8 crores ... under the existing global agreement". One order with a stated value. Not called an order book.
Analyst questions (the question carries no company figure unless stated):
8. calls/Q2FY24-transcript.txt lines 418-419: analyst "you must be having an order book kind of a thing". Answer not read.
9. calls/Q3FY24-transcript.txt line 764 and calls/Q3FY24-transcript-v2.txt line 742: analyst "I know you don't share order book number". Analyst remark (the -v2 file repeats it).
10. calls/Q3FY25-transcript.txt line 335: analyst on "how much order book we want" (utilisation context). Answer not read.
11. calls/Q2FY26-transcript.txt lines 357-362: analyst asks about order book sentiment. Answer not read.
12. calls/Q1FY26-transcript.txt lines 469-490: analyst asks for order book by segment and cites "approximately INR8 crores in metal bellows" (analyst's figure, not the company's).
13. calls/Q3FY26-transcript.txt line 308: analyst asks about "growing your export order book". Answer not read.
14. calls/Q2FY27-transcript.txt line 340: analyst asks for "the current order book and what's the execution period of those orders". Answer not read.
15. calls/Q1FY27-transcript.txt line 724: analyst asks whether there is "a order book ... or is there a delivery schedule". Answer opens: "we generally receive the tentative dispatch schedule from our customer 2 months in advance." Rest not read.

Annual report risk-factor text (not a figure): ar/AR-FY26.txt line 2039 and company/Annual_Report_FY_2025-2026.txt line 2000: "impact order inflows, capacity utilisation".

Not searched because image-only or empty: Audited_Financial_Results_for_March_2025 (scan), Restated FY21-23 statements (0 bytes), Un-audited results June 2023, Dec 2023 and Mar 2024 (0-2 bytes text). An order-book figure inside those would be missed.

Result: no Aeroflex filing or deck in the text searched states a total order book in Rs crore. The only stated order values are item 4 (bellows, Rs 2-2.5 crore, Q2FY26 call) and item 7 (one order, Rs 7.8 crore, 16-Oct-2025).
## (e) Capacity history (every stated capacity figure, with date and document)

Dates are the document date where printed. Where the text read carries no date, it is marked "date not read".

| Date | Document (file, lines) | Product | Stated capacity | Notes |
|---|---|---|---|---|
| 02-Jan-2025 | company/Intimation-of-increase-in-installed-capacity_AIL.txt, lines 1, 23-24 | SS hose and braiding | "increasing the production capacity from 15.0 million meters per annum to 16.5 million meters per annum" | Additional 1.5 million m. |
| 02-Jan-2025 | same, lines 26-27 | Composite hose | "addition of 3 new lines, bringing the total number of lines to 6" | No m-metre figure given. |
| 02-Jan-2025 | same, line 29 | Metal bellows | "annual production capacity of 1,20,000 pieces" | Commercial production commenced per this filing. |
| 15-Jan-2025 | company/Intimation-of-Appointment-of-COO-and-Expansion-Plan.txt, lines 614-626 (table) | SS hose and braiding | Capacity up to Dec-2024: 15 million m; utilisation up to Dec-2024: 85.18%; existing 16.5; proposed addition 3.5; after addition 20.0 million m p.a. | Table in the filing. Target period for 20.0 not read. |
| 15-Jan-2025 | same, lines 548-549 | SS hose and braiding | "increased the installed capacity from 15.00 million meters p.a. to 16,50 million meters pa." | OCR reads "16,50"; read as 16.50. Line 354 of the same file is OCR-damaged ("tol6.50"). |
| 18-Dec-2025 | company/Capacity_Expansion_18.12.2025.txt lines 75-79; same content in company/Outcome_of_Board_Meeting_dated_18.12.2025..txt lines 75-79 | Liquid cooling SFN skid | Existing capacity 2,000 pieces p.a.; utilisation "Under trial production"; proposed addition 13,000 pieces p.a.; completion by June 2026 | Proposed addition of 13,000 on 2,000 gives 15,000 (computed). |
| 18-Dec-2025 | same, lines 82-86 | Supporting machinery | "will not increase the capacity"; period December 2026 | Not a capacity figure. |
| 01-Apr-2026 | company/Intimation_of_update_in_expansion_of_capacity_01.04.2026.txt, lines 20-23 | Liquid cooling SFN skid | "increased the capacity ... from 2,000 pieces per year to 6,000 pieces per year w.e.f. today i.e. 1st April 2026"; expects "15,000 pieces per year, with the anticipated completion by June/July 2026" | Dated 01-Apr-2026. |
| Date not read (after 01-Apr-2026) | Results_Sep2026.pdf p5 note 3 (image) | Liquid cooling SFN skid | "increased the production capacity of its liquid cooling SFN skid assemblies from 9,000 pieces per annum to 12,000 pieces per annum" | Stated in the results dated 28-Oct-2026. The 9,000 step is not dated in any file read. |
| 28-Oct-2026 | Results_Sep2026.pdf p5 note 4 (image) | SS hose and braiding | "successfully completed capacity enhancement in the SS Hose & Braiding Division to 20 million meters per annum" | Results dated 28-Oct-2026. |
| 14-Oct-2026 | company/Intimation_of_Capacity_Enhancements_dated_14.10.2026.txt, lines 72-89 (table) | SS hose (first column) and skid (second column) | Existing 20 million m (SS hose) and 12,000 pieces (skid); proposed addition 10 million m and 15,000 pieces; after addition 30 million m and 30,000 pieces; period March 2028 | Table headers partly garbled; column assignment read from row labels. Skid row: "(to be increased to 15,000 pieces per annum till December 2026)". |
| 14-Oct-2026 | same file, line 77 | Utilisation | "70%" and "69%" as on the quarter ended 30-Jun-2026 | Column mapping (SS hose vs skid) not fully legible. |
| 14-Oct-2026 | company/Press_Release_dated_14.10.2026..txt, lines 54-61 | SS hose and braiding; skid | SS hose: "from 20 million metres p.a. to 30 million"; skid: "Capacity to expand to 30,000 pieces p.a." | Press release, same date. |
| Date of Q2FY27 deck (see file) | calls/Q2FY27-deck.txt lines 117-122 | SS hose; skid | "20 million meters p.a." and skid "12,000 pieces p.a."; "further ongoing expansion of skid assembly capacity to 15,000 pieces p.a. by December 2026"; "doubling ... from 15,000 pieces p.a. to 30,000 pieces p.a. by March 2028 with total investment of Rs 202 Crs" | Investor deck. |
| Date not read | company/Intimation-of-Appointment-of-COO-and-Expansion-Plan.txt, lines 40-41 and 52-53 | SS hose; miniature metal bellows | Line 40: "SS Hose & Braiding capacity will increase from 16.5 million meters per annum to ..." (rest not legible); line 52: "Miniature Metal Bellows, ... with an annual capacity" (figure OCR-damaged) | Undated in the text read. |

Capacity claimed against time (computed from the rows above; company statements, not verified against output):
- Skid: 2,000 pieces (Dec-2025, and the level before 01-Apr-2026); 6,000 (01-Apr-2026); 9,000 (undated step); 12,000 (stated as the level in the 28-Oct-2026 results and the 14-Oct-2026 intimation); 15,000 (target by Dec-2026); 30,000 (target by Mar-2028).
- SS hose and braiding: 15.0 million m (before 02-Jan-2025); 16.5 (02-Jan-2025); 20.0 (target in the 15-Jan-2025 table; stated as completed in the 28-Oct-2026 results); 30.0 (target by Mar-2028, 14-Oct-2026).

## Restatement and data-quality flags

1. Q1FY25 deck: Q1 FY24 comparative PBT and PAT changed (14.54 to 14.70; 10.93 to 11.09) with a new -0.16 exceptional item. Not explained within the deck.
2. Skid capacity: the 28-Oct-2026 results (note 3) say 9,000 to 12,000 pieces. The 01-Apr-2026 intimation says 2,000 to 6,000. Both are company statements; the 9,000 step is not dated in the files read.
3. Skid utilisation: the 14-Oct-2026 intimation gives 69% (column mapping partly unclear). Other utilisation figures in the decks were not searched.
4. Order-book disclosure: the company said it does not share the skid order book (Q4FY26 call, item 6 in section d). No Rs crore order-book total was found in the text searched.
5. The 15,000 skid target by December 2026 appears in the Q2FY27 deck (lines 117-118) and the 14-Oct-2026 intimation (line 72-73). Consistent.

## 10. Second pass: KPI slides from five decks (image-read, pages rendered at 110 dpi)

Read directly from rendered slide images. Percentages are as printed on the slide. The slide text layer did not carry these values, so every figure below is an image read. Slide denominators are not stated on the slides, so each row carries the label the slide uses.

### 10a. Per-deck KPI table

| Deck (file, page) | Slide title (as printed) | Period pinned by slide | Basis stated on slide | SS flexible hoses (with and without braiding) | Assemblies and fittings / others | SFN skid assemblies | Domestic | Export | Export geography (Americas / Europe / Asia / Africa / Others) |
|---|---|---|---|---|---|---|---|---|---|
| Q2FY25-deck.pdf, p15 | "3. De-risk and diversified Portfolio - H1 FY25" | H1 FY25 (half year to 30-Sep-2024). NOT the quarter. | not stated | 52% | "Assemblies & Fittings" 40%; "Others" 8% | not shown | 17% | 83% | Europe 26%; America (North+South) 57%; Asia 13%; Africa 4% (export split) |
| Q4FY25-deck.pdf, p17 | "3. De-risk and diversified Portfolio - FY25" | FY25 (year to 31-Mar-2025). NOT the quarter. | not stated | 48% | "Assemblies & Fittings" 52% | not shown | 26% | 74% | Europe 30%; Americas (North+South) 56%; Asia 10%; Africa 3%; Others 1% (unlabelled sliver) |
| Q2FY26-deck.pdf, p18 | "3. De-Risk and Diversified Portfolio - H1FY26 vs H1FY25" | H1FY26 and H1FY25 (both half-year) | not stated | H1FY26 46%; H1FY25 52% | "Assemblies & others" H1FY26 54%; H1FY25 48% | not shown | H1FY26 27%; H1FY25 17% | H1FY26 73%; H1FY25 83% | H1FY26: Europe 24%, Americas 60%, Asia 13%, Africa 3%, Others unlabelled sliver; H1FY25: Europe 26%, Americas 57%, Asia 13%, Africa 4% |
| Q4FY26-deck.pdf, p12 | "Key Operational Highlights - Quarterly & Full Year" | Q4FY26 (quarter to 31-Mar-2026), Q4FY25 (quarter), FY26, FY25 | not stated | Q4FY26 34%; Q4FY25 39%; FY26 43%; FY25 49% | "Assemblies & Others*" Q4FY26 50%; Q4FY25 61%; FY26 52%; FY25 51% | Q4FY26 16%; FY26 5%; Q4FY25 and FY25 nil shown | Q4FY26 40%; Q4FY25 34%; FY26 31%; FY25 26% | Q4FY26 60%; Q4FY25 66%; FY26 69%; FY25 74% | Q4FY26 (export): Americas 60%, Europe 29%, Asia 8%, Africa 3%; Q4FY25: Americas 46%, Europe 43%, Asia 6%, two unlabelled slivers (2%, 3%); FY26: Americas 59%, Europe 27%, Asia 11%, two unlabelled slivers (3% at Africa, 0-1% other); FY25: Americas 56%, Europe 30%, Asia 10%, Africa 1%, other 3% (labels read from image; slivers ambiguous) |
| Q2FY27-deck.pdf, p8 | "Key Operational Highlights - Consolidated" | Q2FY26 and Q2FY27 (quarter); H1FY26 and H1FY27 (half year) | "Consolidated" stated in title | Q2FY26 48%; Q2FY27 34%; H1FY26 47%; H1FY27 35% | "Assemblies & Others*" Q2FY26 52%; Q2FY27 41%; H1FY26 53%; H1FY27 41% | Q2FY27 25%; H1FY27 24%; Q2FY26 and H1FY26 nil shown | Q2FY26 26%; Q2FY27 40%; H1FY26 27%; H1FY27 41% | Q2FY26 74%; Q2FY27 60%; H1FY26 73%; H1FY27 59% | Q2FY26: Americas 60%, Europe 24%, Others 16%; Q2FY27: Americas 66%, Europe 25%, Others 9%; H1FY26: Americas 60%, Europe 23%, Others 17%; H1FY27: Americas 62%, Europe 28%, Others 10%. "Others" = fittings and metal bellows (footnote) |

Definitions pinned:
- "Quarter" = three months to the stated date. "H1" = six months from 1-Apr to 30-Sep. "FY" = year to 31-Mar.
- Product mix and domestic:export are shares printed on the slide. The denominator is not stated on any of the five slides. The reader should read them as the company's share of its own revenue, and confirm before quoting as a percentage of consolidated revenue.
- Q2FY25 and Q4FY25 slides carry NO consolidated label. Q2FY27 is the only one labelled "Consolidated" in its title. Treat the five slides as company-presented consolidated figures only where the deck says so.
- Category names differ across decks: "SS Flexible Hoses with & without Braiding" (Q2FY25, Q4FY25, Q2FY26) vs "SS Flexible Hoses" (Q2FY27); "Assemblies & Fittings" (FY25 decks) vs "Assemblies & others" (H1FY26 and later); "SFN Skid Assemblies" appears only from Q4FY26.
- Geography split: Q2FY25/Q4FY25 titled "Geographical Split" with no "exports" label; Q2FY26 and Q4FY26 titled "Geographical Split - Exports" (Q4FY26) / "Geographical Split - Exports" (Q2FY26 H1 slide). Q2FY27 uses three buckets (Americas, Europe, Others), not four.

### 10b. Prior-period restatement check (c), within these five decks

A later deck restating an earlier period's mix or export figure is flagged below. "Same" means the printed percentages match to the whole point.

| Period | Original deck and figure | Later deck and figure | Result |
|---|---|---|---|
| H1 FY25 product mix | Q2FY25-deck p15: SS hoses 52%; "Assemblies & Fittings" 40%; "Others" 8% | Q2FY26-deck p18 (H1FY25 column): SS hoses 52%; "Assemblies & others" 48% | RESTATED: 8-point "Others" folded into assemblies. Same SS hose figure. Not explained on the slide. |
| H1 FY25 domestic:export | Q2FY25-deck p15: Export 83%, Domestic 17% | Q2FY26-deck p18 (H1FY25): Export 83%, Domestic 17% | Same |
| H1 FY25 geography | Q2FY25-deck p15: Europe 26%, America 57%, Asia 13%, Africa 4% | Q2FY26-deck p18 (H1FY25): Europe 26%, Americas 57%, Asia 13%, Africa 4% | Same |
| FY25 product mix | Q4FY25-deck p17: SS hoses 48%; "Assemblies & Fittings" 52% | Q4FY26-deck p12 (FY25 bar): SS hoses 49%; "Assemblies & Others*" 51% | RESTATED by one point each way. Q4FY26 deck footnote: "Others include fittings, metal bellows". Not explained. |
| FY25 domestic:export | Q4FY25-deck p17: Export 74%, Domestic 26% | Q4FY26-deck p12 (FY25 bar): Export 74%, Domestic 26% | Same |
| FY25 geography | Q4FY25-deck p17: Europe 30%, Americas 56%, Asia 10%, Africa 3%, Others 1% | Q4FY26-deck p12 (FY25 bar): Europe 30%, Americas 56%, Asia 10%, Africa 1%, Others 3% (slivers read from image; Africa/Others labels ambiguous) | Possible restatement of the 3% and 1% small buckets. Ambiguous on image. Flag, do not treat as confirmed. |
| H1 FY26 product mix | Q2FY26-deck p18 (H1FY26): SS hoses 46%; "Assemblies & others" 54% | Q2FY27-deck p8 (H1FY26): SS hoses 47%; "Assemblies & Others*" 53%; SFN skid nil shown | RESTATED by one point each way. Not explained. |
| H1 FY26 domestic:export | Q2FY26-deck p18 (H1FY26): Export 73%, Domestic 27% | Q2FY27-deck p8 (H1FY26): Domestic 27%, Export 73% | Same |
| H1 FY26 geography | Q2FY26-deck p18 (H1FY26): Europe 24%, Americas 60%, Asia 13%, Africa 3%, Others sliver | Q2FY27-deck p8 (H1FY26): Europe 23%, Americas 60%, Others 17% | RESTATED / REGROUPED: Europe 24 to 23; Asia and Africa folded into "Others" (17% vs 13% + 3% + sliver = 16-17%). Bucket change, not a number change in the same bucket. |
| Q2FY26 (quarter) mix | Not in the five decks read as an original. Q2FY26 quarter product and export figures from the Q2FY27 deck only: SS 48%, Assemblies 52%; Domestic 26%, Export 74%; geography Americas 60%, Europe 24%, Others 16% | n/a | Only one source. No original quarter slide in these five decks. |

Summary of flags for the report:
1. H1FY25 product mix (Q2FY25 vs Q2FY26 deck): 8 points moved from "Others" into "Assemblies". Clear restatement. Only the Q2FY26 comparative shows it.
2. FY25 product mix (Q4FY25 vs Q4FY26 deck): 48/52 became 49/51. Small, unexplained.
3. H1FY26 product mix (Q2FY26 vs Q2FY27 deck): 46/54 became 47/53. Small, unexplained.
4. H1FY26 geography (Q2FY26 vs Q2FY27 deck): bucket definitions changed (Asia and Africa merged into "Others"; Europe 24 to 23).
5. Domestic:export: no restatement found in the five decks (all comparatives match).
6. Q2FY25 deck's slide is H1 FY25, not the quarter. Do not cite it as a Q2FY25 quarter figure.

### 10c. Still not done
- Quarter-only (Q2FY25, Q4FY25) product and export slides were not in these five decks. The Q4FY25 quarter column (39/61 and 66/34) comes from the Q4FY26 deck only.
- Other decks (Q2FY24, Q3FY24, Q4FY24, Q1FY25, Q1FY25-revised, Q3FY25, Q1FY26, Q3FY26, Q1FY27) not read in this pass.
- Capacity, SKU count, employee count, customer count and R&D team slides were not extracted from these five decks in this pass, except the Q2FY27 deck's R&D labels in text (see 10a of the earlier notes).
- Image reads of small slivers (under 3%) are ambiguous and are flagged, not counted.

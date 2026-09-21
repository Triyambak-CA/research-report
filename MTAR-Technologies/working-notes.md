# MTAR Technologies deep dive - working notes index
Run date 21-Sep-2026. Latest reported quarter Q1 FY27 (ended 30-Jun-2026). CMP Rs 7,040.

## Deliverable
mtartech-deep-dive-21-sep-2026.html - 294 KB, self-contained, 20 sections plus executive summary
and source list. Validator: 0 FAIL, 0 WARN. Rendered and checked at 1440px and 390px in Chromium.

## Notes files
notes-01-market-financials.md   market data, 8-quarter and 8-year series, event timeline
notes-02-orderbook-bloom.md     the blanket PO finding, order book composition, Bloom status, surveillance
notes-03-valuation.md           reverse DCF grid, own P/E history, scenario arithmetic
notes-04-thesis-skeleton.md     first-pass thesis before the research streams landed
notes-05-governance-scuttlebutt.md  ownership, promoter dealing, KMP, hiring, forums, the Bloom asymmetry
notes-06-orderbook-capex.md     order book series, conversion rates, capex, capacity
notes-07-guidance.md            guidance scorecard, concall forensics, the "Bloom" word count

## Where the full research-stream reports live (persisted, not copied here)
Five parallel research streams produced ~380 KB of tagged evidence. They are in the session's
tool-results directory and were read in full into the report. Each carries its own methodology
disclosure about what the network policy blocked.

## Environment constraint that shaped everything
The network egress policy blocked direct access to bseindia.com, nseindia.com, mtar.in,
screener.in, trendlyne.com, icra.in and every major Indian financial aggregator. No annual report,
exchange filing or investor presentation could be opened as a document. The session's 200-call
web-search budget was also exhausted.
What DID work: a market-data terminal (prices, multiples, validated fundamental series, peer data)
and, through it, a document library holding FULL VERBATIM earnings-call transcripts for seven of
the last eight quarters. Those transcripts carried most of the differentiated findings.
Every figure in the report is tagged as one of: read directly, surfaced from a primary document
through an intermediary, or derived with the arithmetic shown. Nothing was estimated silently.

## The five findings that mattered most
1. The record order book is one BLANKET purchase order, Rs 2,278.96 cr, counterparty undisclosed,
   "execution timelines will be decided at a later stage". 44% of the book. With one other unnamed
   order it is 94.9% of the record quarter's inflow. Clean energy went 51.2% -> 66.7% of the book
   in the quarter management called diversified.
2. Cumulative FY22-FY26 free cash flow is NEGATIVE Rs 280 cr against Rs 367 cr of reported profit.
   9M FY26 operating cash flow was MINUS Rs 22 cr on Rs 109 cr of EBITDA. The whole year arrived in
   Q4 at 354% of that quarter's EBITDA, and Q1 FY27 repeated it at 291%. Customer advances.
3. Rs 25 cr of stated FY26 forex gain = 60.8% of the entire year-on-year profit increase, and it
   cannot be in other income (which runs Rs 0.5-3.7 cr a quarter), so it is inside EBITDA.
4. Guidance credibility 31% overall, 10% on margin, 6% on capex and commissioning dates, from 83
   scored claims across nine quarters of verbatim transcripts. Management stopped saying "Bloom"
   entirely on the last two calls and withdrew the hot box capacity roadmap under an NDA.
5. The "working capital days halved from 266 to 146" headline is substantially a denominator switch
   from trailing actual revenue to forward-annualised quarterly revenue. Absolute NWC is roughly
   unchanged at about Rs 577 cr.

## Open items that would change the assessment
- The related party transactions note and guarantees to related parties (existence confirmed, quantum unknown)
- The other income note, decomposed - resolves the forex gain, the Q2 FY26 concentration and the treasury yield
- The FY26 cash flow statement's working capital block and the movement in customer advances
- Whether the Rs 238.69 cr of investments is restricted margin money (if so, true net debt is
  Rs 376.6 cr, not Rs 137.9 cr)
- The counterparty of the Rs 2,278.96 cr order
- Promoter litigation and political exposure - never checked, not a clean bill of health
- MTAR's China import book, which sits in exactly the layer its customer's short thesis describes

## Note on file location
Written to /home/user/MTAR-Technologies rather than inside /home/user/firstmate, because the latter
is a shared tracked template repository and company research does not belong in it.

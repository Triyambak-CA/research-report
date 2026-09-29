# notes-11 - valuation inputs and multiple history

Source: screener.in public chart API (company id 1295, consolidated), fetched 30-Sep-2026, saved to
source-docs/screener-{pe,ev,pb,price}-10y.json. AGGREGATOR DATA, weekly points, labelled secondary.
Price basis for the report: Rs 808.30 close 29-Sep-2026. Shares 27.72 cr (277,194,946 per NSE pledge file 30-Jun-2026).
Market cap about Rs 22,405 cr.

## Multiple history (percentile rank of today's value within the window)
| Multiple | Current | 5y median | 5y range | 5y pct rank | 10y median | 10y pct rank |
|---|---|---|---|---|---|---|
| P/E (TTM) | 27.9 | 39.3 | 21.8-82.0 | 19% | 38.5 | 31% |
| EV/EBITDA | 19.4 | 24.2 | 12.3-53.9 | 44% | 14.8 | 71% |
| P/B | 10.1 | 10.1 | 1.6-19.6 | 50% | 2.1 | 75% |
Reading: on trailing P/E the stock looks cheap against its own five years, but trailing earnings include the FY26
Kavach peak that management itself says will not repeat (08-Nov-2025 board note). The P/E percentile is flattered by
a peak denominator; P/B and EV/EBITDA sit mid-range.

## Price around results (weekly closes, Rs)
27-Jun-2025 590.95 | 26-Sep-2025 835.65 | 07-Nov-2025 979.20 (Q2 FY26 results 08-Nov) | 14-Nov-2025 1,041.30 (52w high)
06-Feb-2026 784.70 (Q3 results 07-Feb) | 22-May-2026 774.65 (FY26 results 23-May) | 07-Aug-2026 727.10 (Q1 FY27 08-Aug)
29-Sep-2026 808.30. Low of the last 52 weeks per screener extract: Rs 603.
## Delivery % (screener weekly volume points): 2024 avg 39%, 2025 avg 30%, 2026 YTD 35%; 04-Sep-2026 week 16%
(the week NSE flagged a spurt in volume).

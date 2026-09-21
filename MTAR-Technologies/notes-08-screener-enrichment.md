# notes-08 - screener premium enrichment and the primary-filing cross-check

Added 22-Sep-2026, after the 21-Sep-2026 edition was written in a cloud sandbox that
could not reach screener.in, the exchanges, or the company's own site.

Two sources are used here and they are NOT the same thing:
- **Screener premium Insights**, pulled 22-Sep-2026 from the captain's logged-in Chrome
  session. Aggregator output. Machine-extracted from filings. Labelled as such everywhere.
- **The screener public company page**, fetched directly on 22-Sep-2026. Also aggregator
  output, but it carries the standard ratio, P&L, balance-sheet, cash-flow and shareholding
  tables, which the premium panel does not.
- **The filings themselves**, downloaded into source-docs/ on 22-Sep-2026. These win any
  disagreement.

---

## 1. The order book reconciliation - the number the reader would trip over

The report cites a record order book of **Rs 5,143.0 cr**. Screener's Insights series shows
**Rs 2,581.90 cr**. Both are right. They are eleven weeks apart.

| Figure | Date | Source |
|---|---|---|
| Rs 2,581.9 cr | 31-Mar-2026, FY26 year end | Screener Insights, and the report's own quarterly bridge |
| Rs 5,143.0 cr | 30-Jun-2026, Q1 FY27 | The report's Section 18 table |

The report's Section 18 quarterly table **already carries 2,581.9 at 31-Mar-2026**. So screener
does not contradict the report. It independently corroborates a series the report had to build
by hand, quarter by quarter, from transcripts and residuals.

Where the two series overlap they agree to the decimal:

| Year end | Screener Insights | The report's hand-built bridge | Gap |
|---|---|---|---|
| 31-Mar-2025 | 979.40 | 979.4 | nil |
| 31-Mar-2026 | 2,581.90 | 2,581.9 | nil |

FY26 order inflow also ties: Insights 2,453.30 against the report's footnote of 2,453.4 summed
from quarters, against the company's own stated 2,453.3.

**This is the strongest single validation in the enrichment.** A reconstructed series built
without access to a single filing matches a machine extraction taken from the filings.

## 2. The nine-year order book series, which puts the blanket order in its place

Screener Insights, year-end order book, Rs cr:

| FY18 | FY19 | FY20 | FY21 | FY22 | FY23 | FY24 | FY25 | FY26 |
|---|---|---|---|---|---|---|---|---|
| 201.86 | 243.74 | 345.13 | 415.94 | 541.30 | 1,172.90 | 915.10 | 979.40 | 2,581.90 |

The single undisclosed blanket purchase order of **Rs 2,278.96 cr** is larger than the entire
order book was at **every** year end from FY18 to FY25. It is **1.94x** the previous peak
(FY23's 1,172.90) and **2.33x** the FY25 book it was added to.

That strengthens the report's top red flag rather than undermining it. One order, counterparty
undisclosed, execution timeline "to be decided at a later stage", is nearly twice the largest
backlog this company had ever assembled in its history.

Order inflow, Insights, from FY23: 1,065.50, 482.70, 720.11, 2,453.30. FY26 inflow alone is
2.3x the sum of the three years before it.

## 3. Series alignment - how the Insights rows were dated, and the test that proves it

The Insights panel was transcribed with a header of FY2018 to FY2026, but the rows have
different lengths: order book 9 values, segments and working capital 8, export share 7. The
rows are **right-anchored at FY2026**, not left-anchored at FY2018. Two independent ties prove it:

- Product revenue lines sum to **876.90** against FY26 revenue of 876.21. Tie.
- The prior column sums to **676.00** against FY25 revenue of 676.0. Tie.

Left-anchoring puts 876.90 against FY25 and fails by 200 cr. So:
- 8-value rows run **FY2019 to FY2026**
- the 7-value export row runs **FY2020 to FY2026**

A third, independent confirmation: under this alignment the export row gives FY24 = 71%, and
stream-A recorded the company itself stating FY24 exports at 71%.

Earlier years do not tie exactly (FY22 short by 8.1, FY23 by 14.7, FY24 by 19.6). **My first
reading of that gap as unallocated other operating revenue was wrong.** The FY26 annual report's
Sectorial Revenue break up shows the whole of it is a restatement of the Aerospace and Defence
line: FY22 48.3 -> 56.4, FY23 49.4 -> 64.5, FY24 39.0 -> 58.7 in crore. The aggregator carries the
superseded basis. See notes-10 section 13.

## 4. Shareholding - the full twelve-quarter history the report could not obtain

Screener public page, 22-Sep-2026. The report's Section 13 said the Jun-2026 composition
"fails the 100% sum test and is not reproduced here" and that the shareholder count "could not
be obtained". Both are now closed.

| Quarter | Promoter | FII | DII | Public | Shareholders |
|---|---|---|---|---|---|
| Sep-2023 | 39.14 | 8.81 | 24.06 | 27.98 | 2,75,168 |
| Dec-2023 | 37.26 | 11.02 | 18.97 | 32.76 | 3,12,462 |
| Mar-2024 | 37.26 | 10.57 | 18.07 | 34.10 | 3,13,019 |
| Jun-2024 | 36.42 | 7.74 | 15.96 | 39.88 | 3,35,068 |
| Sep-2024 | 36.42 | 7.81 | 17.28 | 38.49 | 3,17,125 |
| Dec-2024 | 31.42 | 7.01 | 23.17 | 38.39 | 3,04,480 |
| Mar-2025 | 31.77 | 6.74 | 24.40 | 37.10 | 3,01,097 |
| Jun-2025 | 31.65 | 7.57 | 23.51 | 37.26 | 2,97,581 |
| Sep-2025 | 31.41 | 9.21 | 24.81 | 34.58 | 2,75,940 |
| Dec-2025 | 30.59 | 12.24 | 29.96 | 27.19 | 2,18,461 |
| Mar-2026 | 30.44 | 17.31 | 27.66 | 24.59 | 2,09,273 |
| Jun-2026 | 29.35 | 24.80 | 22.35 | 23.51 | 2,58,386 |

Jun-2026 sums to 100.01. It passes.

Four things fall out of the full series that the endpoints alone do not show:

**(a) The report's hypothesis on the Dec-2024 drop is wrong, and the series says why.**
The report flagged a 5.00 pp promoter fall in the Dec-2024 quarter with no matching block deal,
and guessed at "a reclassification of promoter-group members to public". Public did not move:
38.49 to 38.39, a fall of 0.10 pp. **DIIs rose 17.28 to 23.17, up 5.89 pp**, in the same
quarter. Promoter down 5.00, FII down 0.80, public down 0.10, DII up 5.89. It nets to zero.
The stake went to domestic institutions, not to the public register. It was a placement, not a
reclassification.

**(b) Promoter holding did not fall every quarter. It rose once, and the rise is datable.**
Mar-2025 went 31.42 to 31.77, **up 0.35 pp**. That is the one promoter purchase the report found
and could not quantify - recorded as "February 2025, unquantified". It is 0.35% of equity, in
the March 2025 quarter, at roughly one fifth of the price the later selling was done at.

**(c) Domestic institutions have been selling harder than the promoters.**
DII peaked at 29.96% in Dec-2025 and fell to 22.35% by Jun-2026: **minus 7.61 pp in two
quarters**, against a promoter fall of 1.24 pp over the same two quarters. FIIs went from 6.74%
in Mar-2025 to 24.80% in Jun-2026, **up 18.06 pp**. The buyer is foreign and the sellers are
domestic institutions first, promoters second.

**(d) The froth test the report wanted, and it fires.**
The shareholder count fell steadily from 3,35,068 in Jun-2024 to 2,09,273 in Mar-2026, then
**rose 23.5% to 2,58,386 in the June 2026 quarter** - 49,113 new shareholders in the quarter the
stock went parabolic, traded 13.4x its entire share count in a month, and was put into
trade-to-trade surveillance. Public holding fell over the same quarter, 24.59% to 23.51%. More
holders owning less, entering at the top.

## 5. Working capital - four day counts for the same year, on four bases

This is known-trap 2 in its purest form. For FY26 the following are all published:

| Figure | Basis | Source |
|---|---|---|
| **419 days** | cash conversion cycle: debtor + inventory - payable days | screener ratio table |
| **172 days** | net working capital days | screener premium Insights |
| **146 days** | net working capital days | the company's own FY26 presentation |
| **69 days** | working capital days | screener ratio table |

They are not in conflict. They measure different things, and the gap between them IS the story.

Screener's own component days for FY26: debtor 140, inventory 399, payable 119. That gives
140 + 399 - 119 = 420, against the stated 419. The cycle **worsened** from 369 in FY25 to 419
in FY26, and debtor days worsened 113 to 140.

Yet screener's "working capital days" **improved** from 168 to 69 across the same year. The
reconciler is on the liabilities side of the balance sheet: **Other Liabilities went from
Rs 224 cr to Rs 544 cr, up Rs 320 cr in one year.** Net working capital is current assets less
current liabilities, so a Rs 320 cr swelling of current liabilities collapses it. The cash
conversion cycle ignores that line entirely.

The report's finding that FY26's entire operating cash flow arrived in Q4 at 354% of that
quarter's EBITDA, and that Q1 FY27 repeated it at 291%, is the same fact seen from the cash flow
statement. Customer advances. **The working capital "improvement", the Q4 cash flow surge and
the record order book are one event, not three.** Confirm the advances line against the FY26
balance sheet before relying on this.

## 6. Cross-checks against the report's own Section 19 that came out differently

**(a) The cash flow gap was TradingView's, not the aggregators' generally.**
The report's Section 19 says the aggregator implied FY26 CFO of Rs 169.0 cr against the
company's Rs 196.9 cr, a 14% shortfall, and concluded that a screen ranking MTAR on aggregator
free cash flow is working with a light operating line. Screener's cash flow table gives FY26
CFO of **Rs 197 cr**, which ties to the company. The Rs 169.01 cr figure is TradingView's alone
(stream-A flag CF1). The finding needs narrowing to the source that produced it.

**Known-trap 1 tested and PASSED**: screener's cash-flow block is current to FY26, not stale.

**(b) Screener's own free cash flow is internally inconsistent.**
Its cash-flow table gives FY26 free cash flow of Rs 64 cr. Its headline ratio gives CMP/FCF of
2,057 which, at a market capitalisation of Rs 21,581 cr, implies free cash flow of about
Rs 10.5 cr. The two cannot both be the same year on the same basis. Screener's FY20-FY26 free
cash flow sums to **minus Rs 161 cr**, and FY22-FY26 to **minus Rs 191 cr**, against the
report's own FY22-FY26 figure of minus Rs 280 cr. Different definitions of capex; the same
direction and the same conclusion.

**(c) Pledge.** The report's Section 19 market-structure table says "Promoter pledge: None
reported". Screener reports **3.52% pledged**. To be resolved against the Jun-2026 shareholding
pattern filing before either is printed.

**(d) Investments.** Three figures for the same balance: report Rs 238.69 cr, screener premium
Rs 222 cr, screener balance sheet Rs 215 cr. The filing decides.

**(e) ROCE.** Report cites 17.2% for FY26 and recomputes 11.1% year-end. Screener gives 15%
(premium panel 15.2%). Three bases, and none of them is wrong on its own terms.

**(f) Basis.** The premium extract was labelled "standalone" but the page fetched is the
consolidated view, and the figures given are the consolidated ones. MTAR's subsidiary is
immaterial (stream-A: roughly Rs 0.1-3 cr of revenue, loss-making in all eight quarters
observed), so the two bases differ trivially - but the label was wrong and the report should
state which basis it uses.

## 7. What the premium panel adds that nothing else did

Export revenue share, right-anchored FY20 to FY26: 68, 55, 61, 79, 71, 64, **82**.

FY26 exports at 82% of revenue is the highest in the series and an 18 pp jump on FY25's 64%.
That bears directly on the report's forensic finding that Rs 25 cr of FY26 forex gain equals
60.8% of the entire year-on-year profit increase and cannot sit in other income, because other
income for the whole year was only Rs 19 cr. An export share leaping to 82% is consistent with
the gain being a translation benefit inside revenue rather than a separate line - which is what
the report suspected and could not confirm.

Net working capital days, Insights, FY19 to FY26: 129, 114, 120, 198, 230, 252, 267, 172.

## 8. Sources used for this note

- Screener premium Insights panel, MTARTECH consolidated, pulled 22-Sep-2026 from a logged-in
  session. Aggregator, machine-extracted from filings. Not a primary source.
- Screener public company page, https://www.screener.in/company/MTARTECH/consolidated/,
  fetched 22-Sep-2026. Aggregator. Not a primary source.
- MTAR Technologies Ltd Annual Report FY2026, filed with BSE, downloaded 22-Sep-2026 into
  source-docs/. Primary.
- MTAR Technologies Ltd Annual Report FY2025, BSE, downloaded 22-Sep-2026. Primary.
- MTAR Q1 FY27 earnings call transcript and investor presentation, BSE, downloaded
  22-Sep-2026. Primary.
- ICRA rating rationale dated 07-Jul-2026. Primary.

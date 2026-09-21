# Notes 19 - Data-aggregator cross-check (Screener)

Accessed 21-Sep-2026 via the browser against
https://www.screener.in/company/id/1274230/consolidated/

## FIRST, WHY THE INSIGHTS PANEL WAS NOT USED

**Corrected 21-Sep-2026.** An earlier version of this file said the panel was unreachable
because the browser sessions were logged out. **That was wrong.** Firstmate verified directly
in the captain's Chrome: loading the company page shows the account menu for the subscriber, so
the session IS authenticated and the browser tools do reach it.

**The verified reason is different and more useful.** Screener AI, which serves the Insights
panel at https://www.screener.in/ai/company/1274230/, is **NOT included in the premium
subscription**. It is a separately metered add-on running on **prepaid AI Credits**, priced at
roughly Rs 500 for ten to fifteen chat sessions, and the account's credit balance is empty. The
page renders only a "Recharge AI Balance" wallet prompt and no insights.

So: the panel was unavailable **for want of credits, not for want of a login**. A future
session should top up AI Credits rather than re-checking the login, which was never the problem.

## AND IT COSTS THIS PARTICULAR ANALYSIS VERY LITTLE

Also verified, and worth stating as a finding rather than an excuse. Screener's coverage of NSE
is thin precisely **because NSE is unlisted**:

- the page states the shareholding pattern is not available for this company
- it lists no annual reports
- the quarterly results table is blank

The Insights panel exists to machine-extract multi-year operating series from a listed
company's filing history. **NSE has no such history.** For a pre-IPO issuer the offer document
genuinely is the better source, and the 668-page RHP, the 10-Aug-2026 addendum and NSE's own
FY26 annual report carry far more than the panel could have. This is a real observation about
source availability for a pre-IPO issuer.

What follows is from the public company page, which is where the two extra financial years came
from.

## WHAT SCREENER GENUINELY ADDS: two extra years

The offer document carries three restated years plus a stub. Screener carries **five years**.
FY22 and FY23 exist nowhere in the RHP, the addendum or NSE's FY26 annual report, all of which
stop at FY24. This is the real enrichment and it reframes the margin story.

**FY22 and FY23 below are AGGREGATOR DATA, dated 21-Sep-2026, and are not primary-source
verified.** They are labelled as such wherever used.

| Rs crore | FY22 | FY23 | FY24 | FY25 | FY26 |
|---|---|---|---|---|---|
| Sales | 8,313 | 11,856 | 14,780 | 17,141 | 16,601 |
| Expenses | 1,708 | 2,428 | 4,907 | 4,470 | 5,337 |
| Operating profit | 6,605 | 9,429 | 9,873 | 12,671 | 11,265 |
| **Operating profit margin** | **79%** | **80%** | **67%** | **74%** | **68%** |
| Other income | 602 | 851 | 1,650 | 3,956 | 3,417 |
| Depreciation | 310 | 384 | 440 | 547 | 624 |
| Profit before tax | 6,897 | 9,896 | 11,084 | 16,057 | 14,018 |
| Net profit | 5,198 | 7,356 | 8,306 | 12,188 | 10,302 |
| Dividend payout | 40% | 54% | 54% | 94% | 84% |
| Debtor days | 71 | 49 | 46 | 32 | 54 |

Five-year compound growth on these figures: revenue 18.9%, profit after tax 18.6%.
Screener's own stated three-year figures are sales 12% and profit 7%, with trailing twelve
month sales -3% and profit -16%.

### The finding the three-year window hides
**Operating margin was 79% and 80% in FY22 and FY23, then fell to 67% in FY24.** The offer
document opens at FY24, so a reader of the RHP alone sees 66.78% as the starting point and
reads FY25's 73.78% as a peak. On five years it is a partial recovery from a structural drop
that happened in FY24, a full year BEFORE the derivatives curbs of Oct-2024.

The cause is visible in the same table: **expenses roughly doubled from Rs 2,428 crore in FY23
to Rs 4,907 crore in FY24.** Cross-referring to the company's own normalisation disclosure, the
gap between normalised and reported operating EBITDA in FY24 was Rs 15,726 million, about
Rs 1,573 crore, and FY24 SEBI settlement fees were only Rs 726.48 million, about Rs 73 crore.
So the great majority of that FY24 normalisation add-back, and a large part of the expense
jump, is **Additional Contribution to the Core Settlement Guarantee Fund**, not settlements.

NSE's own FY26 annual report gives the Core SGF balance as Rs 8,857.24 crore at FY24,
Rs 12,075.25 crore at FY25 and Rs 13,079.15 crore at FY26. The fund stepped up sharply into
FY25. This supports reading the FY24 margin reset as a regulatory capital charge rather than
an operating deterioration, which is a materially more favourable reading and one the
three-year window does not make visible.

## CROSS-CHECK AGAINST THE FILING. The filing wins on any disagreement.

| Item | Screener | RHP / FY26 annual report | Verdict |
|---|---|---|---|
| FY24 revenue from operations | 14,780 cr | 14,780.01 cr | **Match** |
| FY25 revenue from operations | 17,141 cr | 17,140.68 cr | **Match** |
| FY26 revenue from operations | 16,601 cr | 16,601.30 cr | **Match** |
| FY24 profit after tax | 8,306 cr | 8,305.74 cr | **Match** |
| FY25 profit after tax | 12,188 cr | 12,187.69 cr | **Match** |
| FY26 profit after tax | 10,302 cr | 10,302.06 cr | **Match** |
| FY26 earnings per share | 41.62 | 41.62 | **Match** |
| FY26 dividend payout | 84% | 84.1% | **Match** |
| Market capitalisation | Rs 4,41,788 cr | Rs 1,785 cap x 2,475 mn shares = Rs 4,41,788 cr | **Match, exactly** |
| FY26 operating margin | 68% | 66.85% | Close, definitional difference |
| **FY26 borrowings** | **Rs 412 cr** | **Nil, stated in all periods** | **DISAGREE** |
| **Stock price to earnings** | **49.4** | 42.1x at cap on trailing twelve months | **DISAGREE** |
| Return on capital employed | 40.6% | 42.80% | Differ |
| Return on equity | 28.6% | 32.98% | Differ |

### The disagreements, which are themselves findings
1. **Borrowings.** Screener reports Rs 115, 136, 125, 506 and 412 crore of borrowings across
   FY22 to FY26. The offer document states **total borrowings Nil** in every period, and the
   annual report agrees. The reconciling item is almost certainly **lease liabilities under Ind
   AS 116**, which the company excludes from "total borrowings" and an aggregator sweeps into a
   Borrowings line. The filing wins. The consequence is concrete: **a mechanical screen will
   compute a debt-to-equity ratio and an enterprise value for a company its own audited
   accounts describe as debt free.**
2. **Price to earnings of 49.4.** This does not reconcile to any earnings base in the offer
   document. Rs 4,41,788 crore over FY26 profit of Rs 10,302 crore is 42.9x, and over trailing
   twelve month profit of Rs 10,498 crore is 42.1x. A 49.4x multiple implies earnings of about
   Rs 8,943 crore, which matches no disclosed figure. Treat the aggregator multiple as
   unreliable and use the computed one.
3. **Return ratios.** Screener's 40.6% and 28.6% against the company's certified 42.80% and
   32.98%. Different averaging and different net-worth definitions; the certified figures are
   the ones the offer document stands behind.

### Where a mechanical screen would be most badly misled
**The peer set.** Screener's automated peer comparison for NSE returns: Elevate Campuses, Hero
Motors, Varmora Granito, SS Retail, A-One Steels and Armee Infotech, with a median of 25
companies. Not one is an exchange or a market infrastructure institution. The grouping is
evidently an unlisted-companies bucket rather than an industry peer set. **Any screen-driven
comparison of NSE against that median is meaningless**, and it is a good illustration of why
the report builds its own peer set in Section 3.

**Cash conversion.** Screener computes CFO over operating profit at 113%, 43%, 341%, 61% and
240% for FY22 to FY26, and a Free Cash Flow line to match. These swings are clearing and
settlement balances moving through consolidated operating cash flow, not earnings quality. The
report already declines to compute this ratio, and Screener's output is direct evidence of how
misleading it is when computed mechanically.

**Machine-generated pros and cons.** Screener flags, under cons, "Earnings include an other
income of Rs.3,417 Cr." and "Debtor days have increased from 44.2 to 54.3 days". Both are fair.
The first corroborates the other-income dependence already in Section 6. The second is new to
this report and is picked up below.

## NEW ITEM FOR THE REPORT: debtor days

Screener's series is 71, 49, 46, 32 and 54 days for FY22 to FY26. **Receivable days rose from
32 to 54 in FY26, an increase of about 69%, in a year when revenue fell 3.1%.** Receivables
growing while revenue falls is the classic divergence the forensic section tests for, and it
was not in the report before this pass.

**NOW VERIFIED AT PRIMARY SOURCE.** Trade receivables from the RHP balance sheet, Rs million:

| | 31-Mar-2024 | 31-Mar-2025 | 31-Mar-2026 | 30-Jun-2025 | 30-Jun-2026 |
|---|---|---|---|---|---|
| Trade receivables | 18,646.60 | 15,122.24 | **24,682.13** | 16,537.60 | 22,491.37 |

Receivables rose **63.2%** in FY26, from Rs 15,122.24 million to Rs 24,682.13 million, in a
year when revenue from operations FELL 3.1%. Computing days on the disclosed figures gives
46.0, 32.2 and 54.3 days for FY24, FY25 and FY26, which reproduces Screener's 46, 32 and 54
exactly. So the aggregator was right, and the finding now rests on the filing rather than on
the aggregator.

The RHP also records that trade receivables "decreased by 8.88% to Rs 22,491.37 million" at
30-Jun-2026 from 31-Mar-2026, so the position eased slightly in the stub but remains far above
FY25.

Assessed rather than merely reported: for an exchange, receivables are transaction charges
billed to trading members on short settlement cycles. The RHP's own credit-risk note says
concentrations are limited "due to the Group's customer base being large and diverse and also
on account of member's deposits kept by the Group as collateral which can be utilised in case
of member default". Members are regulated entities with collateral lodged at the clearing
corporation, so the credit risk attaching to this increase is slight. **It is a working-capital
observation and a monitorable, not evidence of revenue-quality problems**, and the report says
so in those terms. Receivables growing 63% while revenue falls is nonetheless exactly the
divergence the forensic section exists to catch, and it belongs on the record.

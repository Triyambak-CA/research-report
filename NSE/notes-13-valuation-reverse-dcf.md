# Notes 13 - Valuation: reverse DCF first, as the skill requires

The model is committed alongside this file as `reverse-dcf-model.py` so the arithmetic is
reproducible. Run it with `python3 reverse-dcf-model.py`.

## The pricing problem, stated honestly

**There is no price band.** This is a DRHP, not an RHP. Under ICDR Reg 29(4)-(6) the band arrives
by advertisement two working days before bidding opens, and bidding has not been scheduled.
Every "Cap Price is X times" cell in the offer document is an unfilled placeholder.

So the reverse DCF cannot be run at a cap price. It is instead run against the prices at which
real money actually changed hands, which the document DOES disclose. That is the honest anchor
and it is better evidence than a dealer quote.

## The disclosed cost-of-acquisition anchors, and a real draft-to-addendum change

DRHP page 101, certified by Manian & Rao, Chartered Accountants (FRN 001983S), 17-Jun-2026:

| Period before the DRHP | WACA in the DRHP (Rs) | WACA as amended by the Addendum (Rs) | Range low to high (Rs) |
|---|---|---|---|
| Last one year | 1,909.02 | 1,909.02 unchanged | 1,350.00 to 2,260.00 |
| Last 18 months | 1,747.54 | 1,747.54 unchanged | 800.00 to 2,260.00 |
| Last three years | **229.23** | **205.86** | Nil to 5,150.00 |

**The three-year figure changed between the DRHP and the Addendum, from Rs 229.23 to Rs 205.86.**
That is a genuine document-to-document diff for Section 22. The cause is arithmetic, not
mischief: the Addendum added SBI Capital Markets as a selling shareholder, and its 85,800,000
nil-cost bonus shares entered the three-year pool and pulled the weighted average down.

**The three-year number is not usable as a valuation anchor in either version.** It averages
nil-cost bonus shares issued in Nov-2024 against cash purchases, and its Rs 5,150 upper bound is
a PRE-bonus price, equivalent to Rs 1,030 post-bonus. Quoting Rs 205.86 next to a market price
would be one of the cleanest ways to mislead a reader in this entire document. The report must
say so.

**The usable anchors are the one-year Rs 1,909.02 and the 18-month Rs 1,747.54**, and above all
the disclosed one-year transaction RANGE of Rs 1,350 to Rs 2,260. Real counterparties bought and
sold NSE shares inside that range in the twelve months to June 2026.

Cross-check: the aggregator market capitalisation cited in the brief, Rs 4,41,788 crore over
2,475 million shares, implies Rs 1,785.00 a share. That sits between the 18-month and one-year
weighted averages and inside the disclosed range, which is a useful consistency check on both.
It remains aggregator data and is labelled as such.

## Earnings base

| Basis | FY26, Rs million | Note |
|---|---|---|
| Profit for the year, as reported | 103,020.61 | includes discontinued operations |
| Profit, continuing operations | 101,795.29 | attributable to owners of the parent |
| **Normalised, continuing + settlement fees after tax** | **112,388.81** | adds back Rs 14,315.57 mn of SEBI settlement fees at a 26% tax rate |

The normalised base is presented alongside the reported one rather than instead of it, because
whether SEBI settlement fees are genuinely non-recurring is exactly the question. They have been
charged in all three restated years, rising each year, across six separate matters. See
notes-12. The report shows both and lets the reader choose.

Free cash flow conversion: FY26 PAT 103,020.61 plus depreciation 6,255.21 less capex 17,547.83
gives 91,727.99, so **FCFE is 89.0% of PAT**. Capex has been running at 2.8x depreciation
(FY26 17,547.83 against 6,255.21) as colocation racks went from 934 to 1,680. The model uses
the 89% conversion rather than assuming PAT converts fully.

Treatment of the balance sheet: NSE has **nil borrowings** and Rs 647,712.81 million of treasury
investments. No net-cash adjustment is made to the equity value, deliberately. Treasury exceeds
net worth of Rs 318,697.20 million by Rs 329,015.61 million, and that excess is clearing member
collateral, Core Settlement Guarantee Fund and settlement float, which is not shareholders'
money and is not distributable. The treasury income those balances generate is already inside
the earnings being discounted, so adding a cash pile on top would double count. This assumption
is stated in the report.

## Reverse DCF: what each price already assumes

Ten years of growth at g, then 5% in perpetuity, discounted at a 12% cost of equity, FCFE at
89% of PAT, 2,475 million shares.

| Anchor | Rs/share | Market cap Rs cr | P/E reported | P/E normalised | Implied 10-yr growth, reported | on normalised |
|---|---|---|---|---|---|---|
| Low end of last-year transactions | 1,350 | 3,34,125 | 32.4x | 29.7x | 17.1% | 16.0% |
| 18-month WACA | 1,748 | 4,32,516 | 42.0x | 38.5x | 20.7% | 19.5% |
| Aggregator implied (unverified) | 1,785 | 4,41,788 | 42.9x | 39.3x | 21.0% | 19.8% |
| **One-year WACA** | **1,909** | **4,72,482** | **45.9x** | **42.0x** | **21.9%** | **20.7%** |
| High end of last-year transactions | 2,260 | 5,59,350 | 54.3x | 49.8x | 24.3% | 23.1% |

Sensitivity of the implied growth at Rs 1,909.02 on normalised earnings:

| | terminal 4% | terminal 5% | terminal 6% |
|---|---|---|---|
| cost of equity 11% | 19.7% | 18.2% | 16.4% |
| **cost of equity 12%** | 22.0% | **20.7%** | 19.2% |
| cost of equity 13% | 24.2% | 23.0% | 21.7% |

## What that growth would actually require

| Anchor | Implied growth | Normalised PAT in year 10 | Multiple of today |
|---|---|---|---|
| Rs 1,350 | 16.0% | Rs 49,393 crore | 4.4x |
| Rs 1,748 | 19.5% | Rs 66,758 crore | 5.9x |
| Rs 1,909 | 20.7% | Rs 73,900 crore | 6.6x |
| Rs 2,260 | 23.1% | Rs 89,557 crore | 8.0x |

## The conclusion that matters

At the weighted average price at which NSE shares actually changed hands in the year to
June 2026, the buyer is paying for roughly **21% compound earnings growth for a decade**, then
5% forever.

Set that against what the same document reports for the most recent year:
- revenue from operations **fell 3.1%**
- profit for the year **fell 15.5%**, and continuing-operations profit fell 12.3%
- equity options notional average daily turnover **fell 17.4%**, and is 20.2% below FY24
- equity futures average daily turnover fell 14.2%
- return on equity fell from 44.87% to 32.98%

and that 60.2% of revenue from operations comes from a single product line, equity options,
whose volumes are the direct object of continuing regulatory restriction.

The gap between a price assuming 21% compounding and a business whose latest reported year went
backwards is the central tension of this offer. It does not make the price wrong: an exchange
with a 93% share of cash equities and a structurally growing investor base (129.09 million unique
registered investors, up from 91.75 million two years earlier) may well compound at that rate
once the regulatory reset is absorbed. But the price is not discounting a reset. It is
discounting an uninterrupted decade.

**Insufficient data for conviction on the forward path.** Three restated years with no stub, no
quarterly series, and no management guidance record is not enough to judge whether FY26 is a
trough or the first year of a lower plateau. That judgement needs the FY27 interims, which do
not exist yet, and the report says so rather than guessing.

## For Section 19's later layers
- Cost-of-acquisition layer: at Rs 1,909.02 the public is asked to pay 2,386x the Rs 0.80 that
  State Bank of India paid, 5,024x the Rs 0.38 SBI Capital Markets paid, and 5.9x the Rs 324.13
  the Canada Pension Plan Investment Board paid. Those multiples must be presented with the
  caveat that the PSU holdings are decades old and bonus-inflated; CPPIB's Rs 324.13 is the most
  informative because it is the most recent large institutional cash entry.
- Dilution mathematics: there is NO dilution. The offer is a pure secondary sale, pre- and
  post-offer capital are both 2,475,000,000 shares, and net asset value per share is unchanged
  at Rs 129.75 either side of the offer. This is worth stating plainly because readers expect an
  IPO to dilute.
- No five-year multiple history and no percentile rank exist. Do not substitute peer multiples
  for the company's own history; say the history does not exist.

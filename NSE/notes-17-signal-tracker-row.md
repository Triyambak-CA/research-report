# Signal tracker row - NSE

`references/ipo-signal-tracker.md` in the `india-equity-deep-dive` skill is maintained ACROSS
reports, and Part E of `ipo-mode.md` says every IPO report appends one row when written and
updates it at listing and at 30, 90 and 180 days.

**The skill folder was out of scope for this task**, so the row is parked here instead of being
written into the skill. **Action for the captain: append the row below to
`~/.claude/skills/india-equity-deep-dive/references/ipo-signal-tracker.md`**, and update the
last four fields as the dates arrive.

| Field | Value |
|---|---|
| Issue | National Stock Exchange of India Limited |
| Platform | Mainboard. Listing on BSE only, because an exchange cannot list on itself |
| Report date | 21-Sep-2026, written on day 3 of bidding, the bid/offer closing date |
| Cap price | Rs 1,785 (band Rs 1,700 to Rs 1,785, bid lot 8) |
| GMP at write | Rs 43 to Rs 55, being 2.4% to 3.1% of the cap price. Aggregator-reported, 20-Sep-2026 22:00. Peaked at about Rs 285 around 04-Sep-2026, so down roughly 81% through the bidding window |
| QIB ex-anchor | **Not separately published.** QIB including anchor closed at 1.53x. Recorded as not determinable rather than estimated |
| NII | 1.68x. The sub-bucket split reported by aggregators (1.39x and 0.23x) is internally inconsistent with that figure and was excluded |
| Retail | **0.72x - undersubscribed** |
| Employee | 1.51x, with a Rs 170 per share discount on 433,437 reserved shares |
| Overall | 1.16x |
| OFS share | **100%.** Pure offer for sale, 126,436,650 shares, nil proceeds to the company |
| Cost multiple | **0.91x.** Cap price divided by the certified one-year weighted average cost of acquisition of Rs 1,954.51. Also 0.99x the 18-month figure of Rs 1,795.70 and 1.43x the three-year figure of Rs 1,247.92 |
| Listing | To be filled. Expected 24-Sep-2026 on BSE. Allotment 22-Sep-2026 |
| T+30 / T+90 / T+180 | To be filled, against the cap price and against the benchmark |
| Note | The report said the cap price sits 76% of the way from the bear case to the bull case, embeds about 19% compound earnings growth for ten years, and is nonetheless BELOW the one-year cost of acquisition. It flagged the combination of a high-quality anchor book, an undersubscribed retail portion, an overall book of only 1.16x after the issue was already cut 15.1%, and an 81% collapse in the grey market premium, as describing a fully priced issue unlikely to see a large listing pop. Watch whether that holds |

## Two other items the skill folder should receive, both out of scope for this task

1. **`references/ipo-mode.md` Part B is wrong on SEBI retrieval.** It states that sebi.gov.in
   "serves both its filing listing pages and the PDFs themselves to a plain command-line fetch
   with no blocking". As at Sep-2026 a plain fetch returns **HTTP 530**; a browser user-agent
   string is required. The working method is recorded in this repo's `AGENTS.md`, which was in
   scope, under "Fetching offer documents from SEBI".

2. **A candidate entry for `references/known-traps.md`**, which this run would have been caught
   by. Suggested wording:

   > ## Reading the draft when the final document already exists, because they sit on different
   > SEBI endpoints
   > SEBI lists draft offer documents and red herring prospectuses under separate menu ids on the
   > same endpoint: `smid=10` for drafts filed with SEBI, `smid=11` for red herring prospectuses
   > filed with the RoC, `smid=12` for final offer documents. Searching only the draft listing
   > returns the DRHP and gives no hint that an RHP exists. Always search 10, 11 and 12 before
   > deciding which document governs.
   > (First seen: NSE, Sep-2026. The run began on the DRHP dated 17-Jun-2026 and was most of the
   > way through a DRHP-stage report before the RHP dated 10-Sep-2026 was found on `smid=11`,
   > with bidding already open and closing that same day. The RHP cut the offer 15.1%, added a
   > stub period that reversed the direction of the headline financials, and corrected the
   > cost-of-acquisition methodology.)

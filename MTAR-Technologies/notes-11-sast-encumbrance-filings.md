# notes-11 - takeover-code disclosures, Aug and Sep 2026, read as documents

Seven SEBI takeover-code disclosures for the window 01-Aug-2026 to 22-Sep-2026 were located on BSE
on 22-Sep-2026 and downloaded into source-docs/. Most are image-only scans and were read by
rendering the page rather than by text extraction.

## The three encumbrance filings, Regulation 31

| Filed | Promoter | Event | Shares | Counterparty | Transaction date |
|---|---|---|---|---|---|
| 31-Aug-2026 | Saranya Loka Reddy | Pledge **created** | 1,05,000 | Aditya Birla Money Limited | 28-Aug-2026 |
| 31-Aug-2026 | Saranya Loka Reddy | Same pledge **released** | 1,05,000 | Aditya Birla Money Limited | **28-Aug-2026, same day** |
| 19-Sep-2026 | Kavitha Reddy Gangapatnam | Pledge created | 32,000 | 360 One Distribution Services Limited | 17-Sep-2026 |

1,05,000 shares is 0.34% of the 3,07,59,591 shares outstanding. 32,000 shares is 0.10%.

**New.** The two Saranya Loka Reddy filings were not in the 21-Sep-2026 edition at all. A pledge
created and released with the same counterparty on the same day nets to no change in encumbrance,
and is characteristic of collateral posted against a margin or settlement obligation rather than
a loan against securities. The purpose is not disclosed. It falls inside the window in which six
of the eight promoter sales were executed. **Record the coincidence, do not assert a link.**

**Confirmed.** The Kavitha Reddy Gangapatnam pledge of 32,000 shares to 360 One on 17-Sep-2026
was in the 21-Sep edition from a secondary source. It is now read from the filed letter. The
report had it right.

## The disposal filings, Regulation 29(2)

| Filed | Promoter | Event | Shares | Before | After | Transaction date |
|---|---|---|---|---|---|---|
| 09-Sep-2026 | K. Shalini and PACs | Disposal | 18,000 | 1.33% (4,10,483) | 1.27% (3,92,483) | 04-Sep-2026 |
| 08-Sep-2026 | K. Shalini and PACs | Disclosure | image-only, not read | | | |
| 18-Sep-2026 | Leelavathi Parvatha Reddy and PACs | Disclosure | image-only, not read | | | |
| 19-Sep-2026 | Leelavathi Parvatha Reddy and PACs | Disclosure | image-only, not read | | | |

Persons acting in concert named on the K. Shalini filing: Anushman Reddy, Mitta Madhavi,
K. Vamshidhar Reddy, A. Manogna, Praveen Kumar Reddy.

Five filings fall in the fortnight to 20-Sep-2026, which is consistent with the report's finding
that promoter selling concentrated at and after the all-time high.

## The pledge percentage still does not reconcile

- Filed and currently outstanding, from the documents above: **0.10% of equity**.
- FY2026 annual report: **no promoter pledge disclosed**.
- Subscription aggregator, 22-Sep-2026: **3.52% pledged**.
- The report's own encumbrance trail: peaks near 1.60%, released to about 0.52%.

Nothing reaches 3.52%. The quarterly shareholding pattern filings would settle it and have not
been read. **Neither figure belongs in the report as fact**, and the report states the conflict.

## One caution on the retrieval

The helper that pulled these reported "no bulk or block deals found" over a twelve-month
lookback. **Treat that as a retrieval failure, not as evidence.** The report already documents a
BofA Securities Europe purchase on 08-09 Jan 2026 and an unidentified bulk buyer on 30-Jan-2026,
so bulk deals demonstrably occurred in the period. BSE publishes bulk and block deals on a
separate feed from corporate announcements. The report's existing position, that its bulk and
block record is a floor rather than a complete list, is unchanged.

## Files

All under source-docs/, named MTAR-SAST-<yyyymmdd>-<name>.pdf. The scans are image-only; render
with `pdftoppm -r 150 -png -f 1 -l 1` and read the page.

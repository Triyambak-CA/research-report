> **SUPERSEDED IN PART - read notes-16 first.** This file was written at DRHP stage early in the
> run. The Red Herring Prospectus dated 10-Sep-2026 was found later the same day and is the
> governing document. The offer was cut to 126,436,650 shares, the price band is Rs 1,700 to
> Rs 1,785, bidding ran 17-Sep to 21-Sep-2026, and the RHP adds a Q1 FY27 stub. The settlement
> was paid on 31-Jul-2026 and the Supreme Court disposed two appeals on 03-Sep-2026.
> See `notes-16-rhp-stage-position.md` for the current position and
> `notes-15-drhp-to-rhp-diff.md` for the full draft-to-final comparison.
>
> Final report: `nseindia-deep-dive-21-sep-2026.html`, validates 0 FAIL 0 WARN.

# NSE IPO deep dive - working notes

Run started 21-Sep-2026. Skill: india-equity-deep-dive, IPO mode (mainboard, 25 sections).
Report will be written at: PRE-OPEN, DRHP stage. No price band, no RHP, no anchor book,
no subscription data exists yet.

## Primary sources secured (in source-docs/, NOT versioned)
| File | Pages | Source |
|---|---|---|
| NSE-DRHP-18-Jun-2026.pdf | 614 | sebi.gov.in/sebi_data/attachdocs/jun-2026/1781762714647.pdf |
| NSE-Abridged-Prospectus-Jun-2026.pdf | 17 | sebi.gov.in commondocs jun-2026 |
| NSE-Addendum-to-DRHP-Aug-2026.pdf | 2 | sebi.gov.in commondocs aug-2026 (image-only, needs OCR) |

SEBI landing page: https://www.sebi.gov.in/filings/public-issues/jun-2026/national-stock-exchange-of-india-limited-drhp_102189.html
Listed on SEBI as filed Jun 18, 2026. DRHP itself dated June 17, 2026.
2016 lapsed DRHP page: https://www.sebi.gov.in/filings/public-issues/dec-2016/national-stock-exchange-of-india-limited_33921.html (Dec 30, 2016)

Text extraction: pdftotext -layout. Helper to read by PRINTED page number:
`python3 <scratchpad>/drhppage.py <from> [<to>]` - printed page N = 0-based text page N+5.

## Established from the DRHP cover and "The Offer" (pages 68-69)
- National Stock Exchange of India Limited. CIN U67120MH1992PLC069769. Incorporated 1992,
  Maharashtra. Registered + corporate office Exchange Plaza, BKC, Mumbai.
- DRHP dated 17-Jun-2026. 100% Book Built Offer. MAINBOARD.
- **Listing sought on BSE only.** BSE is the Designated Stock Exchange. NSE cannot list on itself.
- **PURE OFFER FOR SALE.** Fresh issue: "Not applicable". OFS up to 148,905,525 shares of FV Re 1.
  Company receives NO proceeds (confirmed at page 68 and Objects, page 109).
- Pre- and post-Offer share capital identical: 2,475,000,000 shares. OFS = 6.016% of capital.
- **Eligibility route: Regulation 6(1)** - NOT 6(2). The company PASSED the profitability test.
  (Brief assumed nothing; worth stating because 6(1) means retail >=35%, NII >=15%, QIB <=50%.)
- **"OUR COMPANY DOES NOT HAVE AN IDENTIFIABLE PROMOTER"** - stated on the cover page.
  No promoter means no promoter minimum contribution and no promoter lock-in. Rewrites Section 7
  and the supply calendar in Section 20.
- Employee Reservation Portion present (max 5% of post-offer capital; bid cap Rs 0.50 mn).
- Anchor reservation stated as 40% of anchor portion (33.33% MF, 6.67% LIC/pension) - matches
  the post-01-Dec-2025 regime in ipo-mode Part F. Trap 17 cleared.
- Offer authorised by Governing Board 06-Feb-2026 and 12-Jun-2026; IPO Committee 01-Jun-2026.

## Top 10 selling shareholders and weighted average cost of acquisition (cover page)
Certified by Manian & Rao, Chartered Accountants (FRN 001983S), certificate dated 17-Jun-2026.

| Selling shareholder | Shares offered | WACA per share (Rs) |
|---|---|---|
| State Bank of India | 24,750,000 | 0.80 |
| MS Strategic (Mauritius) Limited | 16,000,000 | 66.54 |
| Canada Pension Plan Investment Board | 11,874,060 | 324.13 |
| Aranda Investments (Mauritius) Pte Ltd | 11,246,336 | 62.38 |
| Bank of Baroda | 10,986,250 | 0.54 |
| Stock Holding Corporation of India Ltd | 10,890,000 | 0.46 |
| General Insurance Corporation of India | 10,658,000 | 5.26 |
| The New India Assurance Company Ltd | 10,500,000 | 0.32 |
| National Insurance Company Limited | 6,000,000 | 0.32 |
| United India Insurance Company Limited | 6,000,000 | 0.50 |

Full list at Annexure A, DRHP page 569. These WACA figures are the spine of Section 18:
state-owned sellers are at well under Re 1 a share.

## Book running lead managers (cover page) - unusually large syndicate
Kotak Mahindra Capital, JM Financial, Morgan Stanley India*, Citigroup Global Markets India,
HSBC Securities, J.P. Morgan India, SBI Capital Markets*, Anand Rathi Advisors, Avendus Capital,
Axis Capital, DAM Capital, Equirus Capital, + more (cover continues).
*Asterisked - check the associate/conflict note: MS Strategic and SBI are both SELLING
shareholders, so Morgan Stanley and SBI Caps may be associates of sellers. Section 23 item.

## Open items / to verify
- Addendum to DRHP (Aug-2026) is image-only. Needs OCR or visual read. It is a draft-to-addendum
  diff artefact for Section 22 and may change the offer.
- SEBI settlement said to be approved around 20-Jun-2026 (co-location). Verify from DRHP litigation
  chapter, page 390 onwards, and from SEBI orders - NOT from press.
- Screener aggregator figures (mkt cap ~Rs 4,41,788 cr, FY26 sales ~Rs 16,601 cr, PAT ~Rs 10,302 cr)
  are UNVERIFIED aggregator data. The restated financials at page 267 onward outrank them.

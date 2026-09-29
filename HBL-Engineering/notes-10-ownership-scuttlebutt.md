# HBL Engineering: ownership, positioning and scuttlebutt (Report Sections 10 and 13)

Built 30-Sep-2026. Status: complete draft. Access dates for web sources: 30-Sep-2026 unless stated.

## Answers to the questions asked

Status line: 20 shareholding XBRL files are on disk covering Sep-2021 to Jun-2026 (16 of them fall in Sep-2022 to Jun-2026); all 20 parsed.

| Q | Answer (detail in section) |
|---|---|
| A. Shareholding, Mar-2025 vs Jun-2025 | Promoter 59.11% (163,852,309 shares, 8 holders) flat since 30-Sep-2023, no promoter sale in 20 quarters. FII/FPI 1.55% (Sep-2022) to 7.10% (Sep-2025) to 5.62% (Jun-2026); MFs 0.32%; insurance 0.07%; AIFs 0.58%; retail 27.29%; HNI 1.76%; holders 349,936 (Jun-2026). Screener did NOT carry forward: NSE holds a separate 30-Jun-2025 filing (broadcast 21-Jul-2025) and it is identical to 31-Mar-2025 in all 42 common category facts (shares and holder counts, total holders 381,826); the file itself differs (new format, cosmetic label edits). The Jun-2025 file on disk is the file NSE serves: its md5 (65a5be25...) equals a fresh download of the URL in nse-shp-master.json (SHP_1488485_21072025011552_WEB.xml) and its DateOfReport is 2025-06-30. hbl.in/Investors.html carries no pattern list, so no company-side copy was available as an independent test. Whether the company re-filed stale data is not established; AMFI cross-check inconclusive (A4, C4) |
| A. Named holders above 1% | Only Oman India JIF (9.68% to nil by Dec-2022), BanyanTree Growth Capital (10.46% to nil by Sep-2022) and Anant Jain (1.05%, Mar and Jun-2025 filings). None named after Jun-2025 (A3) |
| A. Promoter group | 8 holders; Aluru Family Private Trust 51.30% (trustee Barclays until Sep-2023, then Kavita Prasad Aluru); only change is the Sep-2023 trustee switch (inter-se, Reg 10(5)/10(6)) and 0.51 percentage points of promoter buying Sep-2021 to Sep-2023 (A5) |
| B. Pledge | Promoter pledge nil (XBRL all quarters; Reg 31(4) NIL at 31-Mar-2026). The 18,926,873 / 6.88% is NSE column 7, "shares pledged in the depository system" as % of demat shares (NSDL and CDSL, all holders, daily); not a promoter pledge; the 1,537.335 field is its Rs crore value (B) |
| C. MFs | 877,749 shares (0.32%) at Aug-2026, 99.5% passive index funds and ETFs (Smallcap 250, Nifty 500, momentum-quality); active schemes exited (Union Active Momentum, Samco, Taurus Flexi Cap and ELSS); no active large or mid-cap MF holds HBL. SBI MF meeting was 18-Mar-2026 (intimation dated 14-Mar-2026); SBI holds only index funds. FPI names: nothing verified beyond Aware Super (C) |
| D. Bulk and block deals | Block: none. Bulk (NSE) Sep-2024 to Sep-2026: 9 dates, all same-day matched buy and sell by Graviton and QE Securities (HFT), none after 10-Nov-2025. Older one-way deals: BanyanTree sells (Apr-2022), Oman India sells 4,027,666 on 14-Nov-2022, Aware Super buy (D) |
| E. Surveillance, F&O, index | NSE volume-spurt query 04-Sep-2026, company reply 07-Sep-2026 (no undisclosed information). Not in ASM/GSM on 29-Sep-2026. Not in F&O. In Nifty Smallcap 250, Smallcap 100, Nifty 500, MidSmallcap 400; not Midcap 150; no change in the 30-Sep-2026 review. 52-week Rs 613.00 (30-Mar-2026) to Rs 1,122.00 (10-Nov-2025); last Rs 808.30. Nov-2025 results day +12.2%; May-2026 results day -2.1%. Delivery 40 to 44% in Jun to Aug 2026, 24.7% in Sep-2026 (E) |
| F. Scuttlebutt | Primary: 2,200-unit loco order 75.4% delivered (541 deemed cancelled, 18-Dec-2025); lost CLW 6,300-unit loco tender on price (15-Jan-2026), stock -9.4% on 16-Jan; Cochin Shipyard 60:40 marine e-mobility JV (28-Jan-2026); Tonbo 14.25%, IPO offer for sale reported, HBL quantity not established. Weak: AmbitionBox 3.9/5, promotions weakest; jobs listed are all rail loco/signalling roles. No SEBI action, no CXO exit, no promoter interview, no Kavach field-failure report found (F) |

## A. Shareholding pattern from NSE XBRL (primary)

Source: HBL-Engineering/source-docs/shp/SHP_<date>.xml (NSE-hosted XBRL of the Reg 31 shareholding pattern), parsed with Python xml; index and filing dates in source-docs/nse-shp-master.json. Total shares 277,194,946 in every quarter (no change in share capital Sep-2021 to Jun-2026). All % below are derived as shares / 277,194,946 x 100 (derived, from XBRL share counts). 20 filings on disk, Sep-2021 to Jun-2026; the Sep-2021 to Jun-2022 filings use an older XBRL schema with different category tags (FPI and VC/FVCI lines) so they are shown separately.

### A1. Category table, Sep-2022 to Jun-2026 (16 quarters), % of total shares

| Quarter | Promoter | FII/FPI total | (FPI cat I) | (FPI cat II) | MFs | Insurance | Other DIIs (banks, NBFC, other) | AIFs | Retail (resident indiv up to Rs 2 lakh) | HNI (resident indiv above Rs 2 lakh) | Bodies corporate | NRIs | IEPF | Other non-inst (HUF, clearing, trusts) | Holders (public) |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 30-Sep-2022 | 58.97 | 1.55 | 1.55 | 0.00 | 0.00 | 0.00 | 3.61 | 0.00 | 27.03 | 3.57 | 2.22 | 1.02 | 0.35 | 1.68 | 167,032 |
| 31-Dec-2022 | 59.02 | 1.77 | 1.77 | 0.00 | 0.00 | 0.00 | 0.02 | 0.00 | 30.65 | 4.12 | 2.83 | 1.08 | 0.35 | 0.16 | 176,528 |
| 31-Mar-2023 | 59.08 | 0.92 | 0.91 | 0.00 | 0.00 | 0.00 | 0.01 | 0.00 | 29.35 | 4.98 | 2.44 | 1.16 | 0.35 | 1.71 | 171,706 |
| 30-Jun-2023 | 59.10 | 2.63 | 2.12 | 0.51 | 0.00 | 0.00 | 0.00 | 0.14 | 27.90 | 4.80 | 2.42 | 1.17 | 0.35 | 1.50 | 179,436 |
| 30-Sep-2023 | 59.11 | 2.23 | 1.86 | 0.37 | 0.03 | 0.00 | 0.00 | 0.05 | 28.66 | 4.88 | 2.02 | 1.28 | 0.35 | 1.39 | 221,384 |
| 31-Dec-2023 | 59.11 | 2.66 | 2.37 | 0.29 | 0.05 | 0.00 | 0.00 | 0.36 | 28.10 | 4.85 | 1.83 | 1.36 | 0.35 | 1.33 | 242,377 |
| 31-Mar-2024 | 59.11 | 4.59 | 4.38 | 0.21 | 0.09 | 0.00 | 0.00 | 0.57 | 27.27 | 3.98 | 1.54 | 1.28 | 0.35 | 1.23 | 287,024 |
| 30-Jun-2024 | 59.11 | 4.65 | 4.49 | 0.17 | 0.13 | 0.03 | 0.00 | 0.91 | 27.71 | 3.12 | 1.58 | 1.26 | 0.35 | 1.15 | 332,904 |
| 30-Sep-2024 | 59.11 | 4.90 | 4.71 | 0.20 | 0.16 | 0.03 | 0.00 | 0.77 | 27.60 | 2.65 | 2.00 | 1.33 | 0.35 | 1.10 | 368,680 |
| 31-Dec-2024 | 59.11 | 5.22 | 4.92 | 0.30 | 0.19 | 0.02 | 0.00 | 0.18 | 27.45 | 2.96 | 2.05 | 1.31 | 0.35 | 1.15 | 358,790 |
| 31-Mar-2025 | 59.11 | 4.83 | 4.65 | 0.18 | 0.21 | 0.02 | 0.01 | 0.12 | 27.76 | 2.46 | 1.89 | 2.11 | 0.35 | 1.13 | 381,818 |
| 30-Jun-2025 | 59.11 | 4.83 | 4.65 | 0.18 | 0.21 | 0.02 | 0.01 | 0.12 | 27.76 | 2.46 | 1.89 | 2.11 | 0.35 | 1.13 | 381,818 |
| 30-Sep-2025 | 59.11 | 7.10 | 5.54 | 1.56 | 0.29 | 0.03 | 0.01 | 0.32 | 25.44 | 2.65 | 2.39 | 1.28 | 0.35 | 1.01 | 326,058 |
| 31-Dec-2025 | 59.11 | 5.87 | 5.19 | 0.68 | 0.35 | 0.12 | 0.01 | 0.35 | 26.57 | 2.61 | 2.30 | 1.31 | 0.35 | 1.06 | 342,327 |
| 31-Mar-2026 | 59.11 | 5.94 | 5.47 | 0.47 | 0.38 | 0.13 | 0.00 | 0.28 | 26.41 | 2.61 | 2.41* | 1.32 | 0.35 | 1.07 | 340,732 |
| 30-Jun-2026 | 59.11 | 5.62 | 5.36 | 0.26 | 0.32 | 0.07 | 0.00 | 0.58 | 27.29 | 1.76 | 2.35 | 1.39 | 0.35 | 1.14 | 349,928 |

Notes to A1:
- Other DIIs = Institutions Domestic total less MFs, insurance and AIFs, i.e. banks, NBFCs and (Sep-2022 only) Oman India Joint Investment Fund tagged as VC (3.59% of the 3.61%). Derived.
- FII/FPI total = 'Institutions Foreign' tag. Sep-2022 to Mar-2023 it is FPI cat I only; from Jun-2023 cat I plus cat II.
- * Mar-2026: the filing has no Bodies Corporate line; it carries 6,675,629 shares (2.41%) under 'Foreign Nationals' (a tag that is zero in every other quarter) and the category sum only reaches 40.89% public if that line is counted. The line is shown under bodies corporate on inference from the totals (Dec-2025 2.30%, Jun-2026 2.35%); the XBRL tag itself says Foreign Nationals. Mis-tagging in the filing is probable, not confirmed. Holder count for this line is in the XML.
- Promoter% is the 8-holder promoter group, unchanged at 163,852,309 shares (59.11%) since 30-Sep-2023.
- Sep-2022 hni 21 holders 3.57%, retail 162,915 holders. Total holder count (public + 8 promoters) is public + 8.

### A2. Older-schema quarters (Sep-2021 to Jun-2022), % of total shares (XBRL, derived %)

| Quarter | Promoter | Oman India JIF (VC) | BanyanTree Growth Capital (FVCI) | FPI | Resident indiv up to Rs 2 lakh | Resident indiv above Rs 2 lakh | Other non-inst | Holders (public) |
|---|---|---|---|---|---|---|---|---|
| 30-Sep-2021 | 58.60 | 9.68 (26,842,240) | 10.46 (28,983,735) | 0.31 | 18.47 | 0.59 | 1.90 | 106,286 |
| 31-Dec-2021 | 58.95 | 9.32 (25,842,240) | 10.46 (28,983,735) | 0.79 | 17.47 | 1.03 | 1.98 | 118,825 |
| 31-Mar-2022 | 58.97 | 9.32 (25,842,240) | 8.47 (23,469,551) | 0.68 | 19.54 | 0.94 | 2.07 | 141,732 |
| 30-Jun-2022 | 58.97 | 9.32 (25,842,240) | 3.27 (9,050,735) | 1.52 | 21.99 | 2.07 | 2.86 | 151,009 |
| 30-Sep-2022 | 58.97 | 3.59 (9,962,666) | nil | 1.55 | 27.03 | 3.57 | 1.68 | 167,032 |
| 31-Dec-2022 | 59.02 | nil | nil | 1.77 | 30.65 | 4.12 | 0.16 | 176,528 |

Reading: two pre-IPO-style private investors, Oman India Joint Investment Fund and BanyanTree Growth Capital, held about 20% combined at Sep-2021 and were fully out by 31-Dec-2022 (derived from the named-holder rows). Retail rose from 18.47% to 30.65% over the same 5 quarters as they sold. The exits are in the exchange filings; the buyer side (bulk/block deals) is section D.

### A3. Named holders above 1% (public category), all 20 quarters

Only holders the filing itself names. The XBRL names holders in rows for categories where a holder exceeds 1%; FPIs and mutual funds are never individually named in these files (aggregate lines only), so the FII and MF names come from section C, not from here.

| Holder | Category | Quarters named | Shares | % (derived) |
|---|---|---|---|---|
| Oman India Joint Investment Fund | VC fund | Sep-2021 to Sep-2022 | 26,842,240 falling to 9,962,666 | 9.68 to 3.59 |
| BanyanTree Growth Capital LLC | FVCI | Dec-2021 to Jun-2022 (named; Sep-2021 aggregate 28,983,735 under FVCI) | 28,983,735 to 9,050,735 | 10.46 to 3.27 |
| HUF (aggregate row, not one holder) | Other non-inst | Sep-2022, Jun-2023 to Mar-2024, Dec-2024, Mar-2025 | 3,105,639 to 4,144,608 | 1.12 to 1.50 (a pooled category, not a single holder) |
| Anant Jain | Resident individual above Rs 2 lakh | 31-Mar-2025 and 30-Jun-2025 only | 2,910,000 | 1.05 |
| Any named public holder Sep-2025 to Jun-2026 | | none | | none |

Finding: from Sep-2025 no public holder is named above 1% in any of the four filings. The single-holder public register is fragmented: the largest FPI aggregate line (cat I) is 5.54% across 111 holders at Sep-2025.

### A4. Screener versus filings, and the Mar-2025 / Jun-2025 question

Screener extract (secondary, /Users/triyambak/firstmate/data/hblengine-deepdive/screener-premium-extract.md lines 137-145) shows Mar-2025 and Jun-2025 identical to the digit (Promoter 59.10, FII 4.83, DII 0.36, Public 35.70, holders 3.82 lakh).

| Test | Result |
|---|---|
| NSE filing for 31-Mar-2025 exists | Yes. Broadcast 21-Apr-2025 11:45:49, record 198596, XBRL SHP_198596_1420617_21042025114548_WEB.xml (nse-shp-master.json) |
| NSE filing for 30-Jun-2025 exists | Yes, separate record. Broadcast 21-Jul-2025 13:15:57, record 200812, XBRL SHP_1488485_21072025011552_WEB.xml, revisedData N |
| Are the two XML files byte-identical | No. md5 differ (17c673f5... vs 65a5be25...), 299,712 vs 187,954 bytes, different XBRL context naming (new tool format) |
| Are the shares and holder counts identical | Yes. All 42 category-level facts (shares and holder counts) common to both files are identical: promoter 163,852,309; MFs 589,121 (15 holders); FPI cat I 12,887,687 (101); FPI cat II 502,873 (12); insurance 65,402 (2); AIFs 335,567 (5); retail 76,957,798 (371,898); HNI 6,816,335 (15); NRI 5,850,205 (5,176); bodies corporate 5,225,250 (988); total holders 381,826. Named-holder rows also identical (Anant Jain 2,910,000) except cosmetic label changes ("Other" became "Bank"; "Anant jain" became "ANANT JAIN") |

Established: screener did not carry one forward. The exchange itself carries an identical pattern for 30-Jun-2025 and 31-Mar-2025, in a freshly generated file. What is NOT established: whether the company's 30-Jun-2025 holdings genuinely did not move at all for FPIs, MFs and 371,898 retail holders in a quarter. That is statistically implausible (holders changed by 1,000s in every other quarter, and this is a Rs 22,000 crore-scale stock), so the filing is best read as a re-submission of the March data with the date changed, or a stale copy, **UNVERIFIED** as to cause. Check made: the company did not file a revised Jun-2025 pattern (revisedData N in master json; nothing later on the NSE list). Independent tests attempted in section C (AMFI/aggregator MF data for Jun-2025).

Further disagreements between screener and the filings: screener promoter 59.10 for Sep-24 to Jun-25 vs filing 163,852,309 / 277,194,946 = 59.1085 (59.11 rounded); screener 'Public' is non-institutions plus other lines, not the exchange 40.89 public line. FII, DII and holder counts match the filings from Sep-2025 to Jun-2026 (FII 7.10, 5.87, 5.94, 5.62; DII 0.64, 0.82, 0.79, 0.97 - note screener DII 0.64 at Sep-25 vs filing instdom 0.65, rounding).

### A5. Promoter group composition and change (XBRL, all 20 quarters)

Promoter group is 8 holders in every filing. Share counts from the XBRL named-holder rows.

| Holder | Shares (30-Jun-2026) | % (derived) | Change over Sep-2021 to Jun-2026 |
|---|---|---|---|
| Aluru Family Private Trust (trustee Kavita Prasad Aluru since Sep-2023) | 142,205,858 | 51.30 | Barclays Wealth Trustees held it until Sep-2023; 141,141,643 at Sep-2021 rising by 1,064,215 to 142,205,858 at Sep-2023 (derived; 142,172,643 at Jun-2023) |
| Mikkilineni Family Private Trust (trustee Kavita Prasad Aluru) | 253,134 | 0.09 | no change |
| Kavita Prasad Aluru | 9,788,386 | 3.53 | 9,756,308 at Sep-2021, +32,078 by Dec-2021 |
| Mikkilineni Advay Bhagirath | 3,917,600 | 1.41 | none |
| Aluru Jagadish Prasad (Dr A J Prasad, CMD) | 2,692,827 | 0.97 | 2,425,243 at Sep-2021, +267,584 by Dec-2021, flat since |
| Deeksha Mikkilineni | 2,087,187 | 0.75 | 2,031,187 at Sep-2021, +56,000 by Mar-2022; classed as foreign individual in the XBRL through Jun-2025, as Individuals from Sep-2025 |
| Satyanarayana Subramani Srinath Mikkilineni | 1,956,920 | 0.71 | none (name spelled 3 ways across filings) |
| Uma Devi Aluru | 950,397 | 0.34 | none |
| Total | 163,852,309 | 59.11 | Sep-2021 162,432,432 (58.60%) |

Promoter total by quarter (derived from XBRL): Sep-2021 162,432,432 (58.60%); Dec-2021 163,408,094; Mar-2022 163,464,094 (58.97%); Dec-2022 163,604,094; Mar-2023 163,769,094; Jun-2023 163,819,094; 30-Sep-2023 163,852,309 (59.11%) and flat for the 12 quarters since. Net promoter buying Sep-2021 to Sep-2023: 1,419,877 shares, 0.51 percentage points (derived). No promoter sale in any of the 20 quarters.

Governance events in the promoter group, from the exchange filings (primary):
- 18-Sep-2023 (nse/18-Sep-2023_HBLPOWER_18092023173914_HBLPOWER1.txt): Aluru Family Private Trust changed trustee from Barclays Wealth Trustees India Pvt Ltd to family trustees Kavita Prasad Aluru and S S S Srinath Mikkilineni; the trust states it holds 142,205,858 shares (51.30%), founded 2010; Kavita, daughter of Dr A J Prasad, holds the demat account and alone exercises the votes. Reg 10(5) and 10(6) filings 18-Sep-2023 and 28-Sep-2023 (nse/28-Sep-2023_HBLPOWER_28092023114106_MFPTdisclosure2709.txt) record it as inter-se transfer, no consideration, no change in beneficial ownership. The 30-Sep-2023 XBRL shows the new trustee names.
- nse-shp-master.json: Dec-2021 shareholding pattern was revised on 22-Apr-2022 after an NSE query about promoter sub-category; the company said both trusts are Indian promoters and the tagging was an unintentional mistake. Dec-2023 pattern was revised on 08-May-2024 ("misinterpretation of disclosure requirement, now rectified").
- 19-Jun-2026 (nse/19-Jun-2026_team_sandeshc_11052026112438_46.pdf, 9-page scan, read pages 2 and 8): Reg 31(4) annual disclosure as at 31-Mar-2026 dated 03-Apr-2026 (covering letter 07-Apr-2026). Dr A J Prasad 2,692,827 shares (0.97%) and Aluru Family Private Trust 142,205,858 (51.3%) both show encumbrance NIL. Other 7 pages not individually read; the XBRL Reg 31 pattern shows zero promoter encumbrance in all 20 quarters.
- Reg 29(2) filings 18-Jun-2022 (nse/18-Jun-2022_HBLPOWER_18062022214700_Discl_Reg29_HBLPOWER_18062022.txt): BanyanTree Growth Capital LLC disposed shares: 20,392,974 (7.36%) to 19,283,735 (6.96%) then to 19,107,973 (6.89%). Note this shows BanyanTree held 7.36% before that filing whereas the XBRL shows 9,050,735 (3.27%) at 30-Jun-2022, so it sold roughly 10 million further shares between 18-Jun-2022 and 30-Jun-2022 or the two are on different bases; not reconciled, **UNVERIFIED**.

## B. Promoter pledge and the "numSharesPledged 18,926,873 / 6.88%" field

Source: HBL-Engineering/source-docs/nse-pledge.json (NSE API /api/corporate-pledgedata, broadcast 29-Sep-2026 16:31:04, shp 30-Jun-2026); NSE page https://www.nseindia.com/companies-listing/corporate-filings-pledged-data read on 30-Sep-2026 (table headers and footnote quoted below).

| JSON field | Value | Meaning per the NSE page column headers |
|---|---|---|
| totIssuedShares | 277,194,946 | Column 1: total issued shares A+B+C |
| totPromoterHolding / percPromoterHolding | 163,852,309 / 59.11 | Column 2: promoter shares (A), % A/(A+B+C) |
| totPublicHolding | 113,342,637 | Column 3: public holding (B) |
| noOfPledgeShare / percPromoterShares / percTotShares | 0 / 0.00 / 0.00 | Column 4, "PROMOTER SHARES ENCUMBERED AS OF LAST QUARTER": X, % of promoter shares, % of total shares. Zero. |
| noOfSecPledgeShare "1537.335" | Rs 1,537.34 crore | Column 7 value, "VALUES (RS.CR.)" of the depository pledge (a mislabelled JSON field name, it is not a share count). Derived implied price 1,537.335 / 1.8926873 crore shares = Rs 812.3 per share, which matches neither the 29-Sep-2026 close (Rs 808.30) nor the prior close (Rs 785.65); NSE's "last available closing price" date for this column is not stated, so the mismatch is unexplained |
| numSharesPledged | 18,926,873 | Column 7: "NO. OF SHARES PLEDGED IN THE DEPOSITORY SYSTEM" |
| totDematShares | 275,269,022 | Column 7: total demat shares |
| percSharesPledged | 6.88 | Column 7: "(%) PLEDGE / DEMAT" = 18,926,873 / 275,269,022 = 6.8758% (derived) |

NSE page footnote (quoted): "Data Source - NSDL & CDSL, updated Daily (Column 7). Columns 2 to 5 (Listing Agreement Filing), Column 6 (SEBI Regulation 31 Filing)."

Answer: the 6.88% is the depository-system figure. It counts every share of HBL that any holder, promoter or public, has pledged in NSDL or CDSL (in practice mostly broker margin pledges by public/retail clients and any lender pledges) as a % of demat shares. It is not a promoter pledge and the page does not split promoter from non-promoter. The promoter-specific fields are zero and are corroborated by: XBRL flag "WhetherAnySharesHeldByPromotersAreEncumberedUnderPledged" false in the 30-Jun-2026 filing and zero pledged/encumbered shares on every promoter row in Mar-2025; Reg 31(4) annual disclosure NIL as at 31-Mar-2026 (above). Reading: on the exchange's own data the promoter pledge is nil; the 6.88% (about 1.89 crore shares) is a market-wide margin-pledge statistic and by itself does not indicate promoter stress. The one thing it cannot rule out is that some of those pledged shares belong to a promoter-group member held via a depository margin pledge that was created after the last Reg 31(4) date; the depositories' daily Reg 31 feed to the exchange would show that as a SAST event and none appears in nse-ann-all.txt (only the 19-Jun-2026 annual filing). Comparison to other companies on the same page: other names on the page show the same column populated with 0.5% to 20%+ (Zicom 3.15%, Zuari Agro 21.19%), so 6.88% is in the ordinary range but has no peer benchmark verified. No history of this daily column was retrieved: one snapshot only (30-Sep-2026 access), UNVERIFIED as to trend.

## D. Bulk and block deals (NSE)

Source: NSE historical bulk and block deals archive, in-page fetch of /api/historicalOR/bulk-block-short-deals from a headed session opened on nseindia.com (the page's own endpoint per https://www.nseindia.com/dist/js/sections/bulk-block-deals-short-selling.js), accessed 30-Sep-2026. The older documented endpoint /api/historical/bulk-deals returns 503 and is not the one the site uses. Window queried: 01-Oct-2021 to 30-Sep-2026 in chunks. NSE lists the symbol as HBLPOWER until early 2025 and HBLENGINE after. Qty in shares, price Rs per share (unadjusted, no split or bonus in the window).

**Block deals: none in the window (NSE archive returns empty for every chunk).** BSE bulk/block archive was NOT checked (JS site); NSE and BSE bulk deals overlap only for trades on both exchanges, so a BSE-only deal cannot be ruled out. **UNVERIFIED for BSE.**

### D1. Bulk deals 01-Sep-2024 to 30-Sep-2026 (all rows returned)

| Date | Client | Side | Qty | WATP (Rs) |
|---|---|---|---|---|
| 06-Dec-2024 | Graviton Research Capital LLP | SELL / BUY | 2,475,808 / 2,475,808 | 683.42 / 683.09 |
| 11-Feb-2025 | Graviton Research Capital LLP | BUY / SELL | 2,181,533 / 2,181,533 | 471.65 / 471.62 |
| 12-Feb-2025 | Graviton Research Capital LLP | BUY / SELL | 1,757,783 / 1,757,783 | 493.27 / 493.87 |
| 19-Mar-2025 | Graviton Research Capital LLP | BUY / SELL | 2,071,529 / 2,071,529 | 470.91 / 471.05 |
| 01-Apr-2025 | Graviton Research Capital LLP | SELL / BUY | 2,695,559 / 2,695,559 | 518.67 / 518.23 |
| 01-Apr-2025 | QE Securities LLP | SELL / BUY | 1,644,732 / 1,646,338 | 519.01 / 520.46 |
| 01-Jul-2025 | Graviton Research Capital LLP | BUY / SELL | 1,533,962 / 1,533,962 | 631.02 / 631.51 |
| 11-Aug-2025 | Graviton Research Capital LLP | BUY / SELL | 2,356,707 / 2,356,707 | 673.85 / 674.60 |
| 10-Nov-2025 | Graviton Research Capital LLP | SELL / BUY | 1,700,551 / 1,700,483 | 1,090.98 / 1,090.04 |

Every row is a same-day matched buy and sell by a high-frequency proprietary trading firm (Graviton, QE Securities): net position change zero or within about 1,600 shares (derived). No bulk deal appears after 10-Nov-2025 through 30-Sep-2026, including on the volume-spike days 04-Sep-2026, 09-Sep-2026 and 17-Sep-2026. No mutual fund, FII or promoter bulk deal in the 24 months. Earlier window (context, 2022 to 2024), same source: same HFT/market-maker names (Graviton, QE, XTX Markets, Tower Research, Yuga) round-tripping, plus these one-way deals:

| Date | Client | Side | Qty | WATP (Rs) | Note |
|---|---|---|---|---|---|
| 19-Apr-2022 | BanyanTree Growth Capital LLC | SELL | 2,226,702 | 65.77 | Reg 29 filed 18-Jun-2022 |
| 20-Apr-2022 | BanyanTree Growth Capital LLC | SELL | 1,975,631 | 65.25 | |
| 21-Apr-2022 | BanyanTree Growth Capital LLC | SELL | 1,800,000 | 69.77 | |
| 10-Oct-2022 | Aware Super | BUY | 1,556,169 | 118.00 | only one-way institutional buy in the window; client name only; FPIs are not named in the XBRL so this holding is not traced in the filings |
| 14-Nov-2022 | Oman India Joint Investment Fund | SELL | 4,027,666 | 98.16 | about Rs 39.5 crore (derived) |

BanyanTree April 2022 sales total 6,002,333 shares (derived), about Rs 40 crore.

## C. Mutual funds, FIIs and institutional positioning

### C1. Primary count (NSE XBRL, aggregate only)

| Quarter | MF shares | MF holders (per XBRL, fund-house/entity count) | MF % | AIF shares | AIF holders | Insurance shares | FPI cat I holders | FPI cat II holders |
|---|---|---|---|---|---|---|---|---|
| 31-Dec-2024 | 533,469 | 12 | 0.19 | 491,477 | 10 | 49,908 | 98 | 14 |
| 31-Mar-2025 | 589,121 | 15 | 0.21 | 335,567 | 5 | 65,402 | 101 | 12 |
| 30-Jun-2025 | 589,121 | 15 | 0.21 | 335,567 | 5 | 65,402 | 101 | 12 |
| 30-Sep-2025 | 815,113 | 18 | 0.29 | 880,715 | 8 | 94,465 | 111 | 20 |
| 31-Dec-2025 | 966,112 | 18 | 0.35 | 976,013 | 10 | 323,100 | 119 | 21 |
| 31-Mar-2026 | 1,040,088 | 19 | 0.38 | 778,066 | 12 | 361,809 | 126 | 20 |
| 30-Jun-2026 | 885,366 | 20 | 0.32 | 1,617,296 | 21 | 203,260 | 120 | 16 |

Source: shp/SHP_<date>.xml. MF percentage derived on 277,194,946 shares. MFs at 0.32% are the smallest institutional block; FPIs 5.62% and AIFs 0.58% are larger. Total domestic institutions (MF + insurance + AIF + banks + NBFC) were 0.98% at 30-Jun-2026. For a company with about Rs 22,405 crore market cap (derived: 277,194,946 x Rs 808.30 close on 29-Sep-2026 from NSE bhavcopy history; free float 40.89%), domestic institutions hold about Rs 220 crore in total (derived, 0.98% x Rs 22,405 crore).

### C2. Scheme-level holdings (SECONDARY: AMFI monthly portfolio disclosures as compiled by Trendlyne)

Source: https://trendlyne.com/equity/monthly-mutual-fund-share-holding/526/HBLENGINE/<Mon-YYYY>/hbl-engineering-ltd/ , pages for Dec-2024 to Aug-2026 fetched 30-Sep-2026 (Sep-2026 not yet published: total shows 0). Trendlyne's parsed rows sum exactly to its stated totals for every month, which supports the parse but not AMFI itself. Scheme names abbreviated as Trendlyne prints them. Latest arihantcapital page https://www.arihantcapital.com/company-information/mf-holdings/2401 (accessed 30-Sep-2026, secondary, undated) shows the same top schemes and amounts.

Total MF shares and split (derived from the scheme rows; "active" = scheme names without index/ETF/BSE/Nifty/Sensex keywords, a name-based classification, not a SEBI category):

| Month-end | Total MF shares | Active-named schemes' shares | Active % of MF | Schemes holding |
|---|---|---|---|---|
| Dec-2024 | 523,597 | 58,584 | 11.2 | 28 |
| Mar-2025 | 602,455 | 50,393 | 8.4 | 33 |
| Jun-2025 | 664,116 | 47,197 | 7.1 | 33 |
| Sep-2025 | 848,403 | 185,155 | 21.8 | 38 |
| Oct-2025 | 1,062,177 | 391,788 | 36.9 | 41 |
| Nov-2025 | 1,067,849 | 379,706 | 35.6 | 42 |
| Dec-2025 | 1,096,327 | 223,477 | 20.4 | 56 |
| Feb-2026 | 1,136,963 | 186,981 | 16.4 | 59 |
| Mar-2026 | 1,097,882 | 46,200 | 4.2 | 57 |
| Apr-2026 | 1,111,949 | 22,700 | 2.0 | 58 |
| May-2026 | 1,121,213 | 36,478 | 3.3 | 59 |
| Jun-2026 | 929,631 | 36,478 | 3.9 | 52 |
| Jul-2026 | 861,861 | 1,553 | 0.2 | 52 |
| Aug-2026 | 877,749 | 4,299 | 0.5 | 54 |

Top holders at Aug-2026 (all passive; shares; AUM Rs crore per Trendlyne): Nippon India Nifty Smallcap 250 Index Fund 179,609 (Rs 11.81 cr); HDFC Nifty Smallcap 250 ETF 137,332 (Rs 9.03 cr); Mirae Asset Nifty Smallcap 250 Momentum Quality 100 ETF 99,967 (Rs 6.57 cr); SBI Nifty Smallcap 250 Index Fund 91,280 (Rs 6.00 cr); Motilal Oswal Nifty Smallcap 250 Index Fund 66,169 (Rs 4.35 cr); ICICI Pru Nifty Smallcap 250 Index Fund 40,262 (Rs 2.65 cr); HDFC Nifty Smallcap 250 Index Fund 39,577 (Rs 2.60 cr); Edelweiss Nifty500 Multicap Momentum Quality 50 Index Fund 36,157 (Rs 2.38 cr). Each holds HBL at 0.33 to 0.34% of scheme net assets, which is the index weight, so this is index replication, not a view.

Active-scheme history (Trendlyne, shares at month-end; "-" or 0 = not held):

| Scheme | Path | Status Aug-2026 |
|---|---|---|
| Union Active Momentum | 149,426 (Sep to Nov-2025) | exited by Dec-2025 |
| Samco Active Momentum | 170,330 Oct-2025, 92,722 Nov, 133,012 Dec, 52,228 Jan-2026, 89,821 Feb | exited by Mar-2026 |
| Samco Small Cap | 92,722 Nov-2025, 43,830 Dec | exited by Jan-2026 |
| Samco Special Opportunities | 44,680 Oct-2025 to 34,925 May and Jun-2026 | exited by Jul-2026 |
| Samco Dynamic Asset Allocation | 6,416 Oct-2025, 18,153 Jan-2026, 8,130 Feb | exited by Mar-2026 |
| Taurus Flexi Cap | 48,986 Apr-May 2025, 36,500 Feb-Mar-2026, 13,000 Apr-2026 | exited by May-2026 |
| Taurus ELSS Tax Saver | 64,693 Apr-2025 down to 8,650 Jan-Apr-2026, 503 May-Jul-2026 | exited Aug-2026 |
| Taurus Infrastructure | 1,050 Jan to Aug-2026 | holds 1,050 shares (about Rs 0.08 crore, derived) |
| Motilal Oswal Quant | 24,080 Dec-2024, 21,148 Aug-Sep-2025, 20,936 Oct-2025 | exited by Nov-2025 |
| AlphaGrep Flexi Cap | 3,249 in Aug-2026 | new, the only active entry in 6 months, about Rs 0.21 crore (per Trendlyne) |

Adds and exits in the last six month-ends (Feb-2026 to Aug-2026, secondary): exits of Samco Active Momentum (89,821), Samco Special Opportunities (42,830), Taurus Flexi Cap (36,500), Taurus ELSS (8,650), Samco Dynamic Asset Allocation (8,130), and momentum index products (ICICI Smallcap 250 Momentum Quality 100 index fund 62,083; Nippon Nifty 500 Momentum 50 index fund 39,068; Motilal Oswal Nifty 500 Momentum 50 fund 26,143 and its ETF 9,932; Axis Nifty500 Momentum 50 4,556; Bandhan, Groww, Kotak Nifty 500 Momentum 50 products, small). New: Aditya Birla Sun Life BSE 500 Quality 50 Index Fund 4,596, AlphaGrep Flexi Cap 3,249, small passive entries. Net: the fall from 1,136,963 (Feb-2026) to 877,749 (Aug-2026) is 259,214 shares (derived), mostly exits of small active and momentum-index schemes; the core Smallcap 250 index funds kept adding as their AUM grew. Mirae Asset BSE India Defence ETF entered Feb-2026 and rose to 11,074 shares (a defence-theme ETF, so HBL is classed as a defence name in that index; index inclusion per Trendlyne only, UNVERIFIED at the index provider).

**No active large or mid-cap mutual fund scheme holds HBL as of Aug-2026 on this data.** The MF register is passive index replication plus a few micro-holdings by small fund houses (Samco, Taurus, AlphaGrep).

### C3. The one-to-one meeting with SBI Mutual Fund

Primary: nse/14-Mar-2026_HBLPOWER_14032026165220_Intimation_letter.txt (Reg 30 intimation dated 14-Mar-2026, filed 14-Mar-2026 16:52) and nse/18-Mar-2026_HBLPOWER_18032026175806_Post_meeting.txt (filed 18-Mar-2026 17:58). The meeting was on **18-Mar-2026**, not 14-Mar-2026: 14-Mar-2026 is the date of the advance intimation. Format: one-to-one, physical, at SBI Mutual Fund, Mumbai, "organised by third party". Company statement: only publicly available information shared, no UPSI. HBL's only other institutional-meeting intimations in the 2022 to 2026 announcement index (source-docs/nse-ann-all.txt): 20-Apr-2023 and 22-Apr-2023, 06-Jun-2023 and 08-Jun-2023, 07-Sep-2023 and 09-Sep-2023 (analyst meet with deck, in PPT-a.txt), 04-Jul-2024 and 08-Jul-2024 (investor call, recording posted 09-Jul-2024). The SBI meeting is the only fund-manager meeting filed in 2025 and 2026.
What SBI MF held afterwards (Trendlyne, secondary): only passive schemes, SBI Nifty Smallcap 250 Index Fund 86,578 (Mar-2026) rising to 91,280 (Aug-2026), SBI Nifty 500 Index Fund about 4,400, SBI Nifty Smallcap 250 ETF 353 to 429 (from May-2026). **No SBI active scheme has appeared as a holder in any month from Dec-2024 to Aug-2026.** So the meeting has not, so far, led to an active SBI position on the AMFI data (portfolio disclosures for Sep-2026 not yet out). Meeting content is not disclosed.

### C4. Test of the Jun-2025 filing against AMFI (secondary cross-check)

| Quarter-end | NSE XBRL MF shares | AMFI-derived via Trendlyne | Gap (derived) |
|---|---|---|---|
| Dec-2024 | 533,469 | 523,597 | XBRL +1.9% |
| Mar-2025 | 589,121 | 602,455 | XBRL -2.2% |
| Jun-2025 | 589,121 | 664,116 | XBRL -11.3% |
| Sep-2025 | 815,113 | 848,403 | XBRL -3.9% |
| Dec-2025 | 966,112 | 1,096,327 | XBRL -11.9% |
| Mar-2026 | 1,040,088 | 1,097,882 | XBRL -5.3% |
| Jun-2026 | 885,366 | 929,631 | XBRL -4.8% |

AMFI-derived MF holding rose 10.2% from Mar-2025 to Jun-2025 (602,455 to 664,116) while the Jun-2025 filing shows zero change to the share. The gap is the same size as Dec-2025 (-11.9%), when the filing was not a carry-forward, so this test is **inconclusive**: it is consistent with a stale Jun-2025 filing but does not prove it. Trendlyne's own Jun-2025 shareholding column (FII 4.8, DII 0.4, MF 0.21) and screener's are both taken from the same exchange filing and are not independent evidence.

### C5. FII/FPI names

The XBRL never names FPIs (aggregate lines only) and names holders only above 1%; no FPI or MF row is named in any of the 16 quarters from Sep-2022 (XBRL convention, inferred from the absence of named rows), so **no single FPI or mutual fund held above 1% (2,771,949 shares) at any quarter-end since Sep-2022**. Named FPIs from any source: only Aware Super (one-way bulk buy 1,556,169 shares at Rs 118.00 on 10-Oct-2022, NSE archive). Nothing else verified. The number of FPIs rose from 35 (Sep-2022) to 146 (Mar-2026, cat I plus II) and 136 (Jun-2026) (XBRL). Trendlyne (secondary) states FII/FPI investors fell from 192 to 190 in Jun-2026, a different count basis.
FPI cat I moved 5.47% (Mar-2026), 5.36% (Jun-2026); cat II rose sharply to 1.56% at Sep-2025 (4,329,123 shares, 20 holders) then fell to 0.26% (Jun-2026). Cat II includes hedge-fund and corporate-type FPIs (SEBI category definition), so the Sep-2025 spike coincides with the August to November 2025 price run (Rs 600 to Rs 1,122).

## E. Surveillance, F&O status, index membership, price and delivery

### E1. Surveillance and regulatory queries

| Item | Finding | Source and access date |
|---|---|---|
| NSE "spurt in volume" query, 04-Sep-2026 18:58:38 | NSE wrote to the company; response awaited at the time. Text: "Significant increase in volume has been observed in HBL Engineering Limited..." | NSE announcements API in-page fetch (headed session on nseindia.com), 30-Sep-2026; index line in source-docs/nse-ann-all.txt line 3 |
| Company reply, filed 07-Sep-2026 13:39:21 | Letter dated 07-Sep-2026 signed by N Ramakrishna Rao, Dy Company Secretary, replying to NSE/CM/Surveillance/17484 dated 04-Sep-2026 (email dl-surv-all@nse.co.in). Five points: complies with LODR; no material information or event that would bear on price or volume; no undisclosed price-sensitive information or impending announcement or corporate action; any price change could be macro-market movement beyond the company's control; will keep informing the exchanges. (Read from image scan, saved as nse/07-Sep-2026_HBLPOWER_07092026133901_NSE_reply_-_Price_movement_September_2026.pdf and .txt, the .txt is empty because it is an image) | NSE archive PDF, downloaded 30-Sep-2026 |
| What happened on the day | 04-Sep-2026 volume 143.1 lakh shares (14.31 million) versus 5.2 to 7.8 lakh in the prior five sessions (about 20 to 25 times, derived), close Rs 695.75 (+4.5% from Rs 665.55), intraday high Rs 724 (+8.8%), delivery only 9.41% of traded quantity. No company announcement on 01-Sep to 04-Sep-2026 except the 03-Sep-2026 dividend record-date notice (record date 11-Sep-2026) | NSE bhavcopy history API; nse-ann-all.txt |
| Other volume spikes, same month, no company announcement and no NSE query found | 09-Sep-2026 volume 67.1 lakh, high Rs 772.8, close Rs 730.10, delivery 26.71%; 17-Sep-2026 volume 80.3 lakh, close Rs 756.75 (+7.4% on the day), delivery 16.29% | same |
| Earlier NSE/BSE price-movement queries | 26-Apr-2022 (reply 27-Apr-2022) and 11-Oct-2022 (reply 12-Oct-2022): "Significant movement in price", each was a joint NSE and BSE surveillance email (NSE/CM/Surveillance/11913 and bse.surv email on 26-Apr-2022; NSE/CM/Surveillance/12358 on 11-Oct-2022). Company replies downloaded 30-Sep-2026 to nse/27-Apr-2022_HBLPOWER_27042022113145_BSENSEclarificationreply.pdf and nse/12-Oct-2022_HBLPOWER_12102022131018_HBLreplytoBSENSE12102022.pdf, same template as the Sep-2026 reply (complies with LODR, no undisclosed information). Only the first paragraph of each was read. So HBL received three exchange price or volume queries in 4.5 years: Apr-2022, Oct-2022, Sep-2026. 17-Nov-2022 clarification on 11-Nov-2022 board outcome, reply 28-Nov-2022 | nse-ann-all.txt lines 145-171 |
| Results clarification queries | 25-Jun-2025 (Q4 FY25) and 06-Jan-2026 (Q2 FY26): Reg 33 queries on XBRL discrepancies and Schedule III format; "response of the Company is awaited" in the listing, reply not located | nse-ann-all.txt lines 27 and 40 |
| Newspaper article disclaimer | 10-Aug-2025: company disowned an Eenadu (Telugu) business-column article of 10-Aug-2025 ("not released by HBL"), restated Q1 FY26 numbers (consolidated total income Rs 621.41 crore; standalone PAT Rs 139.73 crore, source Rs lakh 13,973.01 converted). The price rose 14.0% on 11-Aug-2025 and 41.5% within 19 sessions (section E3) | nse/10-Aug-2025_HBLPOWER_10082025104802_CLARIFICATION_ON_NEWS_ARTICLE_August_10_2025.txt |
| BSE call advisory, 17-Jun-2025 | BSE asked HBL to correct the names of the entities issuing Kavach letters of acceptance in earlier disclosures: 01-May-2025 Western Railway, 27-May-2025 IRCON International, 14-Jun-2025 and 15-Jun-2025 South Central Railway | nse/17-Jun-2025_HBLPOWER_17062025090651_Clarification.txt |
| ASM (long-term 136 names, short-term 82 names) and GSM (77 names) lists | HBL Engineering appears in none, checked 30-Sep-2026 against the NSE /api/reportASM and /api/reportGSM published lists dated 29-Sep-2026. **Historical ASM/GSM membership was not checked** (NSE publishes daily lists only; no archive obtained), and BSE's lists were not checked. | NSE in-page fetch, 30-Sep-2026 |
| SEBI / exchange penalties or orders | none found in the announcement index (2022 to Sep-2026) or the web search in section F. Absence in an announcement index is not proof; SEBI orders pages were not searched by name beyond section F | |

### E2. F&O segment and index membership (as of 30-Sep-2026)

| Question | Answer | Source |
|---|---|---|
| Is HBLENGINE in NSE F&O | **No.** Not among the 210 underlyings returned by NSE /api/master-quote on 30-Sep-2026, and no HBLENGINE or HBLPOWER line in NSE's lot-size file https://nsearchives.nseindia.com/content/fo/fo_mktlots.csv (221 lines, downloaded 30-Sep-2026) (BEL, BDL, HAL, KAYNES, DIXON, CGPOWER, MAZDOCK are on it; HBLENGINE, Zen Technologies, Data Patterns, Exide are not) | NSE in-page fetch, 30-Sep-2026 |
| Nifty Smallcap 250 | Member | https://www.niftyindices.com/IndexConstituent/ind_niftysmallcap250list.csv , downloaded 30-Sep-2026 (file undated; reflects composition after the 29-Sep-2026 close change or before, see next row) |
| Nifty Smallcap 100 | Member | ind_niftysmallcap100list.csv, same date |
| Nifty 500 | Member | ind_nifty500list.csv, same date |
| Nifty MidSmallcap 400 | Member | ind_niftymidsmallcap400list.csv, same date |
| Nifty Midcap 150 | **Not a member** (0 hits in ind_niftymidcap150list.csv) | same |
| Nifty Total Market, Nifty Microcap 250 | The two CSVs returned the same 78,919-byte file with no HBL hit, i.e. the URL did not return a valid distinct list; **UNVERIFIED** for these two | same |
| Other sector and thematic Nifty indices tried (Nifty India Defence, India Manufacturing, Capital Markets, Infrastructure, Energy, Alpha 50 and about 30 more CSV names) | no HBL hit | same |
| Semi-annual review announced 10-Aug-2026, effective 30-Sep-2026 (close of 29-Sep-2026) | HBL Engineering does not appear anywhere in the 46-page press release (searched all text), so no inclusion or exclusion. 13 names leave and 13 join the Nifty Midcap 150 (joiners include Aster DM, Hindustan Copper, Indian Hotels, Lodha, REC, Shree Cement); 33 leave and a matching number join the Smallcap 250. HBL stays where it is | https://niftyindices.com/Press_Release/ind_prs10082026.pdf , downloaded 30-Sep-2026 |
| Candidacy for Nifty Midcap 150 at the next review (March 2027) | Not determinable from a filing. Inputs: market cap Rs 22,405.7 crore (derived: 277,194,946 shares x Rs 808.30 on 29-Sep-2026), free-float about 40.89% so free-float market cap about Rs 9,162 crore (derived). The press release states the smallest-constituent free-float cap only for the Nifty 50 test, so no Midcap 150 cutoff is available to compare. The Nifty note that F&O availability is required applies to Nifty 50 inclusion only. **nothing verified** on candidacy | |
| MSCI | Web search on 30-Sep-2026 found no statement that HBL is in or a candidate for any MSCI India index; MSCI's August 2026 review added 14 Indian names to MSCI Global Small Cap and dropped 19, HBL not named in the coverage read. **nothing verified**; MarketVector has a component page for HBL Engineering (https://www.marketvector.com/data/component/hbl-engineering-ltd, not opened) | WebSearch 30-Sep-2026, secondary |
| Funds that hold HBL because of its index membership | Nifty Smallcap 250, Nifty 500, Smallcap 250 Momentum Quality 100, MidSmallcap 400 Momentum Quality 100, Nifty 500 Multicap 50:25:25, Nifty500 Multicap Momentum Quality 50, BSE 500, BSE 500 Quality 50 and BSE India Defence (fund names in section C2, Trendlyne) | Trendlyne, secondary |

Practical effect: a stock not in F&O and in Smallcap 250 has no derivative hedging or arbitrage interest and its passive demand comes from Smallcap 250 and momentum-quality index funds. Passive MF ownership at Aug-2026 is 877,749 shares (0.32%); that is 8.8 lakh shares, or 0.3 to 1.0 times one average trading day's volume over Mar-2026 to Sep-2026 (derived: monthly average daily volume 8.4 to 28.6 lakh).

### E3. 52-week range, results-day moves and delivery

Source for all price and volume rows: NSE historical price-volume-deliverable data (/api/historicalOR/generateSecurityWiseHistoricalData, symbol HBLENGINE, series ALL, 01-Aug-2024 to 29-Sep-2026, 537 sessions), fetched from a headed browser session 30-Sep-2026. Prices are as traded (unadjusted; no split or bonus in the window per the announcement index).

52-week (29-Sep-2025 to 29-Sep-2026, 247 sessions): high Rs 1,122.00 on 10-Nov-2025 (close Rs 1,098.80), low Rs 613.00 on 30-Mar-2026 (close Rs 614.80). Last close Rs 808.30 on 29-Sep-2026, which is 28.0% below the 52-week high (derived; Trendlyne shows 27.96%) and 31.9% above the low (derived). The low-to-high swing was 83% (derived).

Results-day reaction (result filed after close or on a Saturday; reaction on the next trading day; volume multiple against the prior 20-session average; delivery % of the reaction day):

| Results | Filed | Reaction day | Prior close (Rs) | Reaction-day close (Rs) | Move | Volume x 20d avg | Delivery % | Close 5th session | Close 20th session |
|---|---|---|---|---|---|---|---|---|---|
| Q2 FY25 | 09-Nov-2024 Sat | 11-Nov-2024 | 557.20 | 539.10 | -3.2% | 1.4x | 37.4 | -2.9% | +20.6% |
| Q3 FY25 | 10-Feb-2025 Mon after 5pm | 11-Feb-2025 | 528.75 | 481.95 | -8.9% | 9.4x | 14.5 | -9.7% | -17.1% |
| Q4 FY25 | 24-May-2025 Sat | 26-May-2025 | 576.10 | 555.25 | -3.6% | 1.3x | 34.1 | +4.2% | +0.4% |
| Q1 FY26 | 09-Aug-2025 Sat | 11-Aug-2025 | 599.80 | 683.95 | +14.0% | 52.2x | 13.3 | +28.9% | +41.5% |
| **Q2 FY26 (period to 30-Sep-2025)** | 08-Nov-2025 Sat | 10-Nov-2025 | 979.20 | 1,098.80 | **+12.2%** (intraday high 1,122) | 14.9x | 14.4 | +6.3% | **-17.5%** |
| Q3 FY26 | 07-Feb-2026 Sat | 09-Feb-2026 | 784.70 | 773.30 | -1.5% | 2.0x | 24.1 | -2.8% | -17.0% |
| **Q4 FY26 (year to 31-Mar-2026)** | 23-May-2026 Sat | 25-May-2026 | 774.65 | 758.70 | **-2.1%** | 2.9x | 33.7 | +3.0% | +5.6% |
| Q1 FY27 | 08-Aug-2026 Sat | 10-Aug-2026 | 727.10 | 694.55 | -4.5% | 2.5x | 43.9 | -6.7% | -4.3% |

All moves and multiples are derived from the NSE rows; filing dates from nse-ann-all.txt lines 7, 14, 23, 29, 36 to 46, 58 to 70. Reading (no view): the two best moves (Aug-2025, Nov-2025) came on very high volume with delivery of only 13 to 14%, i.e. mostly intraday and speculative turnover, and both were followed by the stock giving back gains within a month (Nov-2025 to Dec-2025); the 10-Nov-2025 bulk deal (Graviton, matched buy and sell of 1.70 million shares at about Rs 1,090) was HFT round-trip volume, not investment flow.

Delivery percentage and volume trend (monthly, weighted delivery = sum of delivered quantity / sum of traded quantity; avg volume in lakh shares per day):

| Month | Sessions | Avg close (Rs) | Avg daily volume (lakh) | Weighted delivery % |
|---|---|---|---|---|
| Aug-2024 | 21 | 628 | 27.9 | 32.8 |
| Nov-2024 | 19 | 565 | 13.9 | 30.1 |
| Dec-2024 | 21 | 656 | 38.4 | 24.2 |
| Feb-2025 | 20 | 508 | 28.2 | 19.3 |
| Apr-2025 | 19 | 508 | 36.9 | 14.4 |
| Jun-2025 | 21 | 594 | 12.2 | 30.6 |
| Aug-2025 | 19 | 716 | 62.7 | 17.0 |
| Nov-2025 | 19 | 960 | 51.4 | 20.9 |
| Jan-2026 | 20 | 825 | 25.7 | 26.7 |
| Mar-2026 | 19 | 660 | 13.2 | 36.3 |
| May-2026 | 19 | 796 | 21.1 | 35.5 |
| Jun-2026 | 21 | 795 | 12.4 | 40.1 |
| Jul-2026 | 23 | 748 | 8.4 | 44.2 |
| Aug-2026 | 21 | 696 | 9.3 | 42.4 |
| Sep-2026 (to 29-Sep) | 20 | 734 | 28.6 | 24.7 |

Trend: delivery ran 14% to 25% in the speculative phases (Feb to Apr 2025, Aug and Nov 2025) and rose to 40% to 44% in Jun to Aug 2026 when volume fell to 8 to 12 lakh per day; September 2026 volume tripled with three spike days (04, 09, 17-Sep) at 9 to 27% delivery, which pulled the month's delivery back to 24.7% (derived from NSE rows). Bulk-deal-listed HFT firms account for a part of the earlier high-volume days (section D).

## F. Scuttlebutt and lower-reliability signals

Reliability legend: **P** = primary filing; **S** = secondary (media, aggregator); **W** = weak (review site, job board, unattributed). Everything under F1 to F7 that is not marked P is lower-reliability signal, not established fact.

### F1. Management, board and KMP changes (P: NSE announcement index and attachments; LinkedIn was not accessible without login)

| Date | Event | Source |
|---|---|---|
| 27-Jul-2022 | Dr R N Ramnath resigned as Independent Director | nse-ann-all.txt lines 159-161 |
| 13-Feb-2023 | Mr E Sai Ram (Sai Rao in the index) appointed CFO w.e.f. 31-Mar-2023; Mr G B S Naidu appointed GM (Finance) and Company Secretary w.e.f. 01-Apr-2023 (predecessor M V S S Kumar retired 31-Mar-2023) | nse-ann-all.txt lines 136-140 |
| 09-Aug-2023 | Mrs Kavita Prasad Aluru changed from Executive Director to Non-Executive Director w.e.f. 10-Aug-2023 | nse-ann-all.txt line 114 |
| 11-Aug-2023 and 07-Feb-2024 | "Change in Director(s)" intimations | nse-ann-all.txt lines 89 and 111 (attachments nse/11-Aug-2023_HBLPOWER_11082023145314_Outcomeoftheboardmeeting.txt and nse/07-Feb-2024_HBLPOWER_07022024153432_OutcomeofBoardmeeting07022023.txt; not read in this pass) |
| 04-Nov-2024 | Advay Bhagirath Mikkilineni resigned as Non-Executive Director w.e.f. 04-Nov-2024 (he is a promoter-group shareholder, 1.41%) | nse-ann-all.txt line 71 |
| 31-Aug-2024 to 14-Nov-2024 | Name change HBL Power Systems to HBL Engineering approved 31-Aug-2024; newspaper notice 14-Nov-2024 | nse-ann-all.txt lines 65, 78 |
| 07-Sep-2026 | Deputy Company Secretary N Ramakrishna Rao signed the surveillance reply | nse/07-Sep-2026 reply |
| Dr A J Prasad | Founder, Chairman and Managing Director throughout (per Sep-2023 promoter filing and AR-FY26) | nse/18-Sep-2023_...HBLPOWER1.txt |

No CXO exit is visible in the exchange filings from Jan-2022 to Sep-2026: the CFO and CS have both served since Mar/Apr-2023. Senior operating heads below the board (Kavach, defence, EV, Torquedrive) are not KMP and are not disclosed to the exchanges. **LinkedIn hires/exits for those roles: nothing verified** (LinkedIn is login-walled; no unauthenticated source found).

### F2. Tonbo Imaging (P: exchange filings and AR-FY26; S for news)

| Item | Detail | Source |
|---|---|---|
| Decision | Board approved 13-Feb-2023 an investment of not exceeding Rs 150 crore in Tonbo Imaging; investment agreement to invest up to Rs 150 crore in tranches announced 04-Apr-2023 | nse-ann-all.txt line 142; nse/04-Apr-2023_HBLPOWER_04042023165348_Announcement04042023Tonboa.txt (the 13-Feb-2023 attachment nse/13-Feb-2023_HBLPOWER_13022023134136_outcome311222.txt is an empty text, i.e. image scan, not read) |
| Position at 31-Mar-2026 | 8,163,000 equity shares of Rs 2 each = 14.25% (prior year 11.13%); original cost Rs 86.67 crore; classified Associate on board representation and voting rights on affirmative matters; HBL CFO (Mr Sairam) is nominee director on Tonbo. Bonus 19:1 and split of Rs 10 into Rs 2 shares in FY26 | AR-FY26.txt lines 8580-8590, 11833-11840, 4836, 10453 |
| Carrying value | Rs 112.63 crore at 31-Mar-2026 (Rs 105.37 crore at 31-Mar-2025) including goodwill; share of profit Rs 7.25 crore FY26 (Rs 8.09 crore FY25); group share of net assets Rs 78.83 crore | AR-FY26.txt lines 11860-11880 |
| Tonbo financials (associate note, 100% basis) | FY26 total income Rs 369.94 crore (FY25 Rs 474.39 crore, down 22%, derived), PAT after OCI Rs 50.90 crore (FY25 Rs 72.67 crore, down 30%, derived), equity Rs 553.16 crore | AR-FY26.txt lines 11896-11917 |
| HBL Tonbo Private Limited | 51:49 JV incorporated 12-Sep-2022, no commercial operations, strike-off application under Section 248(2) filed in FY23 and still under process; investment of Rs 51,000 provided 100% | AR-FY26.txt lines 8551-8556, 10445 |
| Related: Naval Systems and Technologies Pvt Ltd | Associate, 41% HBL; FY26 total income Rs 50.01 crore, PAT Rs 11.60 crore, HBL share Rs 4.76 crore | AR-FY26.txt lines 11896-11915 |

### F3. Kavach delivery, vendor competition and price signals

| Date | Signal | Reliability | Source |
|---|---|---|---|
| 21-May-2025 | Kavach 4.0 rollout delayed by approvals: original target March 2025 moved to December 2025; only HBL Engineering had RDSO clearance for Version 4.0, with Kernex Microsystems, Medha Servo Drives and RailTel "at various stages"; quote "no technological bottlenecks from the OEM side, the approvals are lagging behind"; costs quoted Rs 50 lakh per km trackside and Rs 80 lakh per locomotive; Rs 1,950 crore of Rs 3,764 crore spent by March 2025 | S (media summary of a railway briefing; not verified against Railway Board) | https://swarajyamag.com/amp/story/news-brief/kavach-40-rollout-delayed-due-to-slow-vendor-approvals-indian-railways-extends-deadline-to-december-2025 , fetched 30-Sep-2026 |
| 17-Jun-2025 | BSE call advisory made HBL correct the awarding-entity names in four Kavach order disclosures | P | nse/17-Jun-2025_HBLPOWER_17062025090651_Clarification.txt |
| 18-Dec-2025 | Company letter: 2024 order for 2,200 loco TCAS units, last delivery date 13-Dec-2025; HBL delivered and installed 1,659 (75.4%); 541 units deemed cancelled under the PO terms. Of a 2024 tender of 10,000 units, company estimates about 3,000 were delivered by all five suppliers, about 7,000 deemed cancelled and expected to be re-tendered (date unknown); three new tenders totalling 11,429 units already floated; "total expected demand" 18,429 units | P (company statement; the 3,000 industry figure is the company's estimate, "not accurately known") | nse/18-Dec-2025_HBLPOWER_18122025124735_Updates_December_2025.txt |
| 18-Dec-2025 price reaction | close Rs 762.80 (17-Dec) to Rs 818.85 (18-Dec), +7.3%, volume 100.4 lakh vs about 28.5 lakh the day before, delivery 14.3% | derived from NSE data | NSE bhavcopy API |
| 15-Jan-2026 | Company letter: "From the CLW loco Kavach tender for 6,300 units, decided this week, HBL did not get any order, because other bidder's prices were lower." Visible demand falls from 18,429 to 12,129 loco units; HBL expects at least about Rs 1,000 crore of loco business in FY2027 with carry-over into FY2028; Kavach station orders in hand of which Rs 900 crore planned for invoicing in FY2027 and Rs 400 crore in FY2028; FY2026 total Kavach sales expected Rs 1,880 crore; FY2027 Kavach estimate at least Rs 1,000 crore loco plus Rs 900 crore stations | P (the only primary statement that HBL lost a Kavach tender on price) | nse/15-Jan-2026_HBLPOWER_15012026161219_Updates_January_2026.txt |
| 16-Jan-2026 price reaction | No 15-Jan-2026 session appears in the NSE data (the letter was filed at 16:13 on 15-Jan-2026, after the close, so 16-Jan is the reaction day either way). Close Rs 878.25 (14-Jan) to Rs 796.05 (16-Jan), -9.4%, intraday low Rs 757.70 (-13.7%), volume 125.1 lakh, delivery 17.6%; Rs 705.15 on 20-Jan-2026, -19.7% from 14-Jan (derived). Business Standard headline (search snippet, page returned HTTP 403 so not read): "HBL Engineering drops 13% after it misses major order from Indian Railways", 16-Jan-2026 | derived; S for the headline | NSE API; https://www.business-standard.com/markets/news/hbl-engineering-drops-13-after-it-misses-major-order-from-indian-railways-126011600288_1.html |
| 28-May-2026 | CLW issued a Letter of Acceptance to HBL for on-board Kavach loco equipment (Ver 4.0) worth Rs 1,714 crore excluding 18% GST. Whether this is the same CLW requirement re-tendered after the January result is **not stated in the filing; UNVERIFIED** | P | nse/28-May-2026_HBLPOWER_28052026183104_Kavachorder.txt |
| Other loco orders after January | ICF Rs 575 crore incl GST accepted 31-Jan-2026; BLW Rs 800.36 crore incl GST 11-Feb-2026; PLW Rs 83.81 crore incl GST 09-Apr-2026; ICF Rs 31.49 crore excl GST 03-Aug-2026 | P | nse/ files of those dates |
| CLW order won by a competitor | Search results list a Kernex Microsystems CLW order of Rs 2,465.71 crore for 3,024 on-board sets (implies about Rs 0.82 crore per set, derived; GST basis and date not confirmed). Headline only, page not opened | S, UNVERIFIED | https://oga-prod.angelone.in/news/stocks/kernex-microsystems-share-price-surges-over-5-on-securing-2-465-71-crore-kavach-order (search result, 30-Sep-2026) |
| RDSO or CRS comments on HBL equipment; failures or accidents on Kavach-fitted sections | Searches found the CRS report on the Kanchanjunga Express collision of 17-Jun-2024 (Rangapani to Chatterhat, Katihar division), which says Kavach was NOT installed on that route and recommends Kavach on priority (S, Business Standard and Deccan Herald summaries in search results). **Nothing found or verified of a failure, delay attributed to HBL by RDSO or CRS, or an accident on a Kavach-fitted section.** Deccan Herald piece on a parliamentary panel briefing on Kavach delays returned HTTP 403 and was not read | S; absence of evidence | WebSearch 30-Sep-2026 |

Reading (no view): the only two primary admissions of operating or commercial friction are the 24.6% shortfall on the 2,200-unit order (541 units deemed cancelled) and the lost CLW tender on price. Both were disclosed by the company itself, in each case followed by a price move on heavy, low-delivery volume.

### F4. E-mobility and expansion signals

| Signal | Detail | Reliability | Source |
|---|---|---|---|
| Cochin Shipyard JV | 28-Jan-2026: CSL board approved a JV company with HBL for electric mobility technology and energy storage solutions in the marine space, HBL 60% and CSL 40%, domestic. Investment amount not stated in the text read | P | nse/28-Jan-2026_HBLPOWER_28012026223317_Intimation_CSL-HBL_28_January_2026.txt |
| Torquedrive (EV drivetrain) | Rs 3 crore provided for permanent diminution in FY24; TTL Electric Fuel Pvt Ltd treated as subsidiary, further Rs 0.18 crore invested in FY26 with Rs 0.09 crore diminution (fair value Rs 5 against face Rs 10) | P | AR-FY26.txt (standalone note on investments, page 154 of the report) |
| HBL Tonbo Pvt Ltd JV | no operations, striking off | P | AR-FY26.txt |
| Job listings | AmbitionBox lists 12 open jobs for the "HBL Power Systems" profile (10 shown, page dated 26-Sep-2026): Senior Engineer-Locomotive (Kazipet), Senior Engineer-Construction (Hyderabad), Locomotive-Commissioning Engineer SWR (Mysuru), Shed Incharge-Locomotive (Kazipet), Manager/Assistant Manager Railway Signalling Customer Service (Ahmedabad), Senior Engineer-QA, Manufacturing Engineer (Shamirpet), Deputy Manager Mechanical Stores, Training Coordinator, Document Controller. Every role is rail-loco or signalling deployment, commissioning, service or plant support; **no EV drivetrain, battery or defence role appears in the 10 shown**. Roles are posted for field locations (Kazipet, Mysuru, Ahmedabad) consistent with Kavach loco fitment and customer service. Naukri job IDs on the links encode dates from May-2025 to 29-Sep-2026 (format DDMMYY, an inference) | W | https://www.ambitionbox.com/reviews/hbl-power-systems-reviews , fetched 30-Sep-2026 |
| Company careers page | https://hbl.in/Careers.html is a static page (footer 2022) with no openings list; hbl.in/careers returns 404 | P (company site) | fetched 30-Sep-2026 |
| Naukri and LinkedIn job counts | Naukri pages returned empty shells and LinkedIn is login-walled. **nothing verified** for posting volume trend | | |

### F5. Employee reviews (W, small self-selected samples)

| Profile | Overall | Reviews | Sub-scores | Source and date |
|---|---|---|---|---|
| AmbitionBox "HBL Engineering" | 3.9 / 5 (industry avg 4.0 per site) | 155 (page updated 25-Sep-2026); women 4.0 on 11 reviews, men 3.9 on 144 | work-life 3.8, job security 3.7, culture 3.5, skill development 3.5, work satisfaction 3.5, salary 3.4, promotions 3.2; 76% report work from office, 56% a 6-day week | https://www.ambitionbox.com/reviews/hbl-engineering-reviews , 30-Sep-2026 |
| AmbitionBox "HBL Power Systems" (old-name profile) | 3.9 / 5 | 595 (updated 26-Sep-2026); 2.2k salary entries, 34 interviews | work-life 3.9, culture 3.6, job security 3.6, skill 3.6, satisfaction 3.5, salary 3.4, promotions 3.1; AI summary lists pros as work culture, team members, learning and neutral or mixed on career growth, salary, benefits; 72% work from office, 70% 6-day week, 54% strict timing | https://www.ambitionbox.com/reviews/hbl-power-systems-reviews , 30-Sep-2026 |

Recurring complaints in the latest reviews read (Aug to Sep 2026; 3 to 5 reviews per profile, so anecdotes not a pattern): middle-manager politics and credit-taking by senior people, treatment differing between on-payroll and off-payroll staff (an Installation and Commissioning Engineer at Bardhaman), office at the city outskirts, communication gaps between teams and with suppliers, promotions and skill development weak, a 1-star "insecure job" comment from an electrical engineer at Pusapatirega. Positive: job security because "lot of projects", learning. The low promotions score (3.1 to 3.2) is the most consistent across both profiles (from the sub-scores above). Glassdoor returned a bot-block page (HTTP 403): **nothing verified from Glassdoor**.

### F6. Promoter and management public statements

Dr A J Prasad interviews in 2025 to 2026 media: **none found** in three web searches (results returned only order-win news, brokerage pages and the company letters). His direct communication is in the exchange letters "Information to the stakeholders" (18-Dec-2025, 15-Jan-2026), which are signed by the Company Secretary but written in the company's voice with capitalised emphasis, and in the AGM-2025 transcript (source-docs/AGM-transcript-2025.txt) and AGM-2026 outcome (26-Sep-2026, nse/26-Sep-2026_HBLPOWER_26092026205140_OutcomeofAGM2026.pdf). Those are primary and are covered in other sections of the report.

### F7. Tonbo Imaging news (S) and regulatory actions

| Item | Detail | Reliability | Source |
|---|---|---|---|
| Tonbo IPO | Tonbo Imaging India filed a DRHP on 23-Dec-2025 (Business Standard headline dated 23-Dec-2025 and Inc42), SEBI cleared an IPO after refiling (Inc42 dated 28-Sep-2026 says approval on 21-Sep-2026; Free Press Journal dated 10-Jul-2026 also reports an approval) and a fresh DRHP is reported filed 04-Aug-2026. The issue is entirely an offer for sale of 18,085,246 equity shares: 1,960,000 by promoter selling shareholders, 339,700 by a promoter-group selling shareholder and 15,635,046 by investor selling shareholders. Search summaries list HBL Engineering among the investor sellers (with Qualcomm Ventures, Artiman, Edelweiss Value, Celesta, Tenacity, India Exim Bank, Florintree) and give HBL's holding as 14.25% at DRHP. **The number of shares HBL would sell is not established**: Inc42's Dec-2025 article names CEAQ Technologies (up to 1.5 crore shares), Timothy Guy Mitchell, Artiman and others but not HBL, and the Aug-2026 DRHP was not opened (SEBI site returned an "Unauthorized Request Blocked" page to a scripted request). Dates conflict across outlets; treat as UNVERIFIED until the SEBI-filed DRHP is read | S | https://inc42.com/buzz/tonbo-imaging-files-drhp-for-ofs-only-ipo ; https://www.freepressjournal.in/business/sebi-clears-ipo-plans-of-zetwerk-marri-retail-tonbo-imaging-and-gujarat-victory-forgings ; https://inc42.com/buzz/tonbo-imaging-secures-ipo-nod-after-refiling-draft-papers/ ; search results, all accessed 30-Sep-2026 |
| HBL disclosure of the Tonbo sale | None. No exchange announcement by HBL mentions a Tonbo IPO or offer for sale (nse-ann-all.txt, Jan-2022 to Sep-2026), and AR-FY26 has no such text (searched "IPO", "offer for sale") | P (absence) | source-docs |
| Tonbo financials per media | Inc42 (28-Sep-2026) as read is internally garbled (reports "net profit of Rs 362.6 crore" and "operating revenue Rs 299.9 crore from Rs 374.3 crore"); the audited associate note in HBL's AR-FY26 (total income Rs 369.94 crore, PAT Rs 50.90 crore) is used instead | S versus P | see F2 |
| SEBI or exchange regulatory action against HBL | None found in the announcement index or in a web search for SEBI orders, show-cause notices, penalties or investigations (results returned other companies). SEBI's own orders database was not searched by name (SEBI pages blocked scripted access). The exchange-side items are the queries listed in E1 | absence, not proof | WebSearch 30-Sep-2026 |

## Incidental findings (adjacent to the brief)

1. NSE bulk-deal archive shows the security under two symbols: HBLPOWER (to early 2025) and HBLENGINE afterwards; any script pulling deals by the new symbol alone misses 2022 to 2024 rows (rows for HBLPOWER were returned even when HBLENGINE was queried, so the API appears to key on ISIN or company, but rows are labelled with the symbol in force on the day).
2. The 28-May-2026 CLW award of Rs 1,714 crore excl GST follows the 15-Jan-2026 statement that HBL lost the 6,300-unit CLW loco tender on price; the filings do not connect them (see F3).
3. The Jun-2026 NSE shareholding filing (new XBRL schema, dated 23-Jul-2026) shows 21 AIFs holding 1,617,296 shares (0.58%), up from 12 AIFs and 778,066 shares at Mar-2026; a fund-name breakdown is not available.
4. The Reg 31(4) annual encumbrance disclosure is dated 03-Apr-2026 (covering letter 07-Apr-2026) but NSE lists it at 19-Jun-2026 19:02:16 (attachment file name carries 11-May-2026); the gap suggests a late upload or re-post, cause not established.

## Gaps (nothing verified or UNVERIFIED)

- BSE bulk and block deals (JS site not accessed); NSE covers NSE-executed deals only.
- Named FII/FPI holders: the XBRL has no FPI names; the BSE-published full holder list was not obtained. Only Aware Super (Oct-2022 bulk buy) is named.
- Whether the 30-Jun-2025 NSE shareholding filing is stale (identical to 31-Mar-2025 in all 42 common category facts): established that it is identical and not a screener artefact; cause unestablished; AMFI cross-check inconclusive (C4).
- Historical ASM/GSM membership and BSE surveillance lists; only the 29-Sep-2026 NSE lists were checked (HBL absent).
- Nifty Total Market and Microcap 250 membership (CSV URLs returned an identical non-list file); Nifty Midcap 150 or MSCI candidacy: nothing verified.
- Depository pledge history for the 6.88% figure (single snapshot) and its promoter versus non-promoter split.
- LinkedIn senior hires and exits, Naukri and LinkedIn posting volume trend, Glassdoor: inaccessible.
- Kavach field failures, RDSO or CRS remarks on HBL equipment, accidents on Kavach-fitted sections: nothing found.
- HBL's share count in the Tonbo IPO offer for sale and the SEBI filing dates: not established.
- BanyanTree exits reconciliation (Reg 29 7.36% on 18-Jun-2022 versus XBRL 3.27% at 30-Jun-2022).
- Trendlyne/AMFI scheme table: names as abbreviated by Trendlyne; the active versus passive split is my name-based classification.
- Mar-2026 bodies corporate mis-tag (shown under Foreign Nationals in the XBRL): inferred, not confirmed.

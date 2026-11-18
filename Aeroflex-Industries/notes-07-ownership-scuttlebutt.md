# Aeroflex Industries - notes 07: ownership, flows, scuttlebutt

Prepared 18-Nov-2026. Tags: [P] primary filing/exchange or index-provider file read by me; [S] secondary aggregator/news; [L] lower-reliability scuttlebutt; [D] derived (inputs shown).
Access note: the NSE JSON route (headed chrome-devtools-axi, in-page fetch) was NOT attempted: the session sandbox refused the eval command. BSE API returned 403. NSE/BSE XBRL shareholding files were therefore not pulled. Named-holder data comes from screener public investor API (works logged-out) and Trendlyne. Raw pulls are in source-docs/flows/ (scr_*.html, niftyindices CSVs, fo_mktlots.csv).

## 1. Shareholding, 12 quarters (% of capital)

Sources: screener table (source-docs/screener/consolidated.txt, 18-Nov-2026) for promoter, FII, DII, public, holders; Trendlyne summary (trendlyne.com/equity/share-holding/1617407/AEROFLEX, fetched 18-Nov-2026) for MF, insurance, other-institution split. [S; Trendlyne ties to screener on every quarter checked]

| Qtr | Promoter | FII | DII | of which MF | Insur | Other inst (AIF etc) | Public | Holders |
|---|---|---|---|---|---|---|---|---|
| Dec-23 | 66.99 | 0.36 | 5.83 | not retrieved | - | - | 26.82 | 97,153 |
| Mar-24 | 66.99 | 0.29 | 6.16 | 4.02 | 0.25 | 1.89 | 26.56 | 94,670 |
| Jun-24 | 66.99 | 0.21 | 5.91 | 3.83 | 0.24 | 1.85 | 26.89 | 92,602 |
| Sep-24 | 66.99 | 0.13 | 5.59 | 4.46 | 0.16 | 0.99 | 27.27 | 93,397 |
| Dec-24 | 66.99 | 1.57 | 5.66 | 4.65 | 0.02 | 0.99 | 25.76 | 95,796 |
| Mar-25 | 66.99 | 0.66 | 5.91 | 4.87 | 0.02 | 1.02 | 26.43 | 1,04,640 |
| Jun-25 | 66.99 | 0.39 | 3.87 | 2.85 | 0.02 | 1.00 | 28.74 | 1,17,540 |
| Sep-25 | 66.99 | 0.23 | 3.43 | 2.40 | 0.02 | 1.01 | 29.34 | 1,11,985 |
| Dec-25 | 66.99 | 0.99 | 3.55 | 2.21 | 0.39 | 0.95 | 28.46 | 1,03,736 |
| Mar-26 | 65.47 | 1.49 | 3.80 | 2.12 | 0.21 | 1.47 | 29.23 | 97,254 |
| Jun-26 | 65.47 | 3.61 | 1.48 | 0.80 | 0.00 | 0.68 | 29.45 | 1,09,759 |
| Sep-26 | 65.47 | 3.93 | 1.42 | 0.92 | 0.00 | 0.50 | 29.18 | 1,21,628 |

Trendlyne Feb-2026 post-allotment column: MF 2.16, insurance 0.42, other inst 0.92. Its "locked 29.85%" through Dec-24 is the IPO pre-issue lock-in.

Promoter group has two holders [P: company/Shareholding_Pattern_after_Preferential_Allotment_Feb_2026.txt, report date 09-Feb-2026]: Aeroflex Enterprises Ltd (formerly Sat Industries) 79,181,833 sh = 59.84%; Italica Global FZC (foreign) 7,454,830 sh = 5.63%. Total 86,636,663 = 65.47% of 132,330,768 sh. Promoter share count did not change, so 66.99 to 65.47 is pure dilution [D: 86,636,663/129,320,370 = 66.99%; /132,330,768 = 65.47%].

Public-category detail. Only two snapshots verified; other quarters: nothing verified.
| Category | 09-Feb-2026 [P] | Sep-2026 [S Trendlyne] |
|---|---|---|
| Resident individuals up to Rs 2 lakh | 101,278 holders, 25,912,943 sh, 19.58% | 117,069 holders, 24,099,418 sh, 18.21% |
| Resident individuals above Rs 2 lakh (HNI) | 7 holders, 5,350,138 sh, 4.04% | 13 holders, 6,969,586 sh, 5.27% |
| Bodies corporate | 219, 5,458,752 sh, 4.13% | 356, 4,994,728 sh, 3.77% |
| NRIs | 1,520, 1,385,158 sh, 1.05% | 2,258, 1,469,588 sh, 1.11% |
| Mutual funds | 2, 2,859,923 sh, 2.16% | 6 schemes, 1,214,782 sh, 0.92% |
| AIFs | 3, 1,222,391 sh, 0.92% | not split out |
| Insurance | 1, 555,604 sh, 0.42% | 0 |
| FPIs | 17 holders, 681,006 sh, 0.51% | Cat I 28 inv 2,235,935 sh 1.69%; Cat II 10 inv 2,966,056 sh 2.24%; total 3.93% |

HNI bucket went from 7 to 13 holders and +1.62 mn sh between Feb and Sep-26 [D: 6,969,586 - 5,350,138]. The data in hand cannot attribute this to any of the six allottees.

### Named holders above 1% (screener investor API, pulled 18-Nov-2026) [S]
| Holder | Dec-23 | Mar-24 | Jun-24 | Sep-24 | Dec-24 | Mar-25 | Jun-25 | Sep-25 | Dec-25 | Mar-26 | Jun-26 | Sep-26 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Ashish Kacholia | 1.80 | 1.80 | 1.80 | 1.81 | 1.84 | 1.92 | 1.99 | 1.99 | 2.01 | 2.27 | 2.27 | 2.27 |
| Bengal Finance & Investment Pvt Ltd | 1.79 | 1.79 | 1.79 | 1.79 | 1.79 | 1.79 | 1.79 | 1.79 | 1.79 | 2.06 | 2.06 | 2.06 |
| Jagdish N Master | 1.01 | 1.01 | 1.01 | - | - | - | - | - | - | - | - | - |
| Nippon India Small Cap Fund | 1.62 | 2.27 | 2.27 | 2.27 | 2.27 | 2.27 | 2.27 | 1.88 | 1.88 | 1.79 | - | - |
| Invesco India Smallcap Fund | 1.56 | 1.56 | 1.56 | - | - | - | - | - | - | - | - | - |
| Invesco India Manufacturing Fund | - | - | - | 2.00 | 2.20 | 2.23 | - | - | - | - | - | - |

"-" means not listed above 1%. No FPI is individually above 1% in any quarter (screener FII endpoint returned empty). Promoter lines: Aeroflex Enterprises 61.23 to 59.84 (Mar-26); Italica 5.76 to 5.63.

Preferential allottees, 03-Feb-2026, 30,10,398 sh at Rs 182.70 [P: working-notes item 11, from the allotment filing]: Kacholia 4,10,509; Bengal Finance 4,10,509; Sanjay Surana 8,21,018; R K Investments (Vaibhav Shah) 8,21,018; Madhu Silica 2,73,672; Naresh Mehta 2,73,672.
- Kacholia and Bengal Finance were holders from Dec-2023 (1.80% and 1.79%); the preferential topped them up. Kacholia had been adding each quarter from Sep-24 (1.80 to 2.01) before it.
- Surana 0.62%, R K Investments 0.62%, Madhu Silica 0.21%, Mehta 0.21% [D: shares/132,330,768] sit below 1%, so they never show in named lists. Appearance date = 03-Feb-2026 allotment. Post-lock-in selling by these four: nothing verified.
- Lock-in: new shares 6 months from trading approval (about Aug-2026; approval date not read, UNVERIFIED). See addendum for the locked count.
- Kacholia, no sale visible: Sep-2026 holding 3,008,589 sh = 2.27% [S Trendlyne]. [D] 3,008,589 - 410,509 = 2,598,080 = 2.009% of 129,320,370, equal to the 2.01% held in Dec-25. DSIJ (08-May-2026) calls 2.27% his highest stake since Sep-2023; its "3,00,08,589" is a typo for 30,08,589 [S].
- Bengal Finance, no sale visible: Sep-2026 2,726,444 sh = 2.06% [S]. [D] 2,726,444 - 410,509 = 2,315,935 = 1.79% of 129,320,370, the Dec-25 level.
- Whalesbook (04-Feb-2026) says Kacholia "through Bengal Finance" took 821,018 sh. The allotment filing says 410,509 each, and 821,018 belongs to Surana and R K. Filing lists them as two separate allottees with separate pre-issue holdings; Whalesbook conflates them. Any relationship between Kacholia and Bengal Finance: not established in the filings read (if related, combined 4.33% [D: 2.27+2.06]). [S vs P]
- Cost Rs 182.70; CMP Rs 497 = 2.72x. Selling by the other four after Aug-2026 cannot be ruled in or out.

### IPO anchors and MF exits
- Anchor book 21-Aug-2023: Rs 103.68 cr, 95,99,980 sh at Rs 108 [S: 5paisa, Business Today, IIFL]. Anchor count conflicts: 10 (Business Standard) vs 15 (ICICI Direct, IIFL). Named: Nippon India Small Cap Fund 18,51,980 sh (19.29% of anchor book per 5paisa), Invesco India Smallcap Fund 13,88,920 sh (Chittorgarh), Societe Generale, Winro Commercial, Universal Sampo General Insurance, Invesco MF (Business Standard). Full list: nothing verified (Chittorgarh behind login).
- Invesco India Smallcap Fund: 1.56% to Jun-24, below 1% by Sep-24. Exited within about 12 months of IPO.
- Invesco India Manufacturing Fund: in by Sep-24 (2.00%), 2.23% Mar-25, below 1% by Jun-25. MF total fell 4.87% to 2.85% in the Jun-25 quarter.
- Nippon India Small Cap Fund (largest anchor): 2.27% to Jun-25, 1.88% Sep-25, 1.79% Mar-26, then absent from the Jul-Sep 2026 monthly MF list [S Trendlyne]. MF total in Jun-26 was 0.80%, so Nippon was at most 0.80% then [D]. With none shown Jul-Sep-26 it appears fully exited by Jul-2026, about 23.7 lakh sh [D: 1.79% x 132,330,768]. Sale price: nothing verified.
- DII 5.83% to 1.42% = MF 4.87% (Mar-25) to 0.92%, insurance 0.42% (Feb-26) to 0, other inst 1.47% (Mar-26) to 0.50% [S/D].

### FIIs in the Jun-26 and Sep-26 quarters
FII 1.49% (Mar-26) to 3.61% (Jun-26) to 3.93% (Sep-26). FPI count: Trendlyne 47 to 54 in Sep-26 qtr; MarketsMojo 34 to 38 (different basis). Feb-26 filing: 17 FPIs, 0.51%. Names: nothing verified. Structure at Sep-26: Category II FPIs 2.24% across 10 investors, Category I 1.69% across 28 [S Trendlyne]. Confirm the Category II weight from the XBRL file. Foreign limit used 6.9% in Feb-26 filing (includes the 5.63% foreign promoter).

## 2. Bulk and block deals since listing
Source: Trendlyne bulk/block page, 136 entries, fetched 18-Nov-2026 [S]. Not cross-checked against the exchange bulk-deal feed. Page was read through a summarising tool, so single quantities may carry transcription error.
Finding: every entry is a same-day buy and sell by the same proprietary or high-frequency firm at near-identical prices. No investor, fund, promoter or allottee appears on either side. Counterparties: QE Securities LLP, HRTI Pvt Ltd, Graviton Research Capital LLP, Junomoneta Finsol, NK Securities Research, Microcurves Trading, AlphaGrep, Musigma Securities, Aakraya Research, Irage Broking, Elixir Wealth Management, Pace Stock Broking, Share India Securities, Qnance Technologies, Marwadi Chandarana, Vogue Commercial.
Dates: 31-Aug-2023 (listing), 01-Sep-2023, 19-Oct-2023, 11-Jan-2024, 11-Sep-2024, 17-Jan-2025, 19/20/23/24-Jun-2025, 22-Jul-2025, 19-Dec-2025, 29-Jan-2026, 18-Feb-2026, 07-May-2026, 08-May-2026, 29-Oct-2026, 30-Oct-2026.
Last 12 months, per day, buys vs sells in million shares [D from the table]:
| Date | Price range Rs | Buys | Sells |
|---|---|---|---|
| 19-Dec-2025 | 197-199 | 3.01 | 3.03 |
| 29-Jan-2026 | 183-186 | 4.98 | 4.97 |
| 18-Feb-2026 | 225-226 | 4.08 | 3.95 |
| 07-May-2026 | 386-389 | 1.53 | 1.60 |
| 08-May-2026 | 425-428 | 2.33 | 2.24 |
| 29-Oct-2026 | 551-556 | 5.66 | 5.61 |
| 30-Oct-2026 | 540 | 0.67 | 0.68 |
Event alignment: 19-Dec-2025 = day after pref board outcome; 29-Jan-2026 = Q3FY26 call; 07/08-May-2026 = rally after Q4 results (board outcome 05-May-2026); 29-Oct-2026 = Q2FY27 call. These are news-volume days, not institutional blocks.
The Nippon exit (about 23.7 lakh sh) has no bulk or block entry, so it was spread over ordinary trading [inference, labelled]. No bulk deal by promoter, Kacholia, Bengal, Surana, R K, Madhu Silica or Mehta.

## 3. MF monthly holdings (Trendlyne monthly MF page, Jul/Aug/Sep-2026, fetched 18-Nov-2026) [S]
| Scheme | Jul-26 sh | Aug-26 sh | Sep-26 sh | Sep-26 AUM Rs cr / % of scheme AUM |
|---|---|---|---|---|
| TrustMF Small Cap Fund | 788,364 | 898,064 | 898,064 | 48.19 / 1.24% |
| TrustMF Multi Cap Fund | 187,770 | 213,749 | 213,749 | 11.47 / 1.26% |
| Motilal Oswal Nifty Microcap 250 Index Fund | - | - | 102,494 | 5.50 / 0.23% |
| Index/ETF residue (Groww, Angel One x2, Mirae, Bandhan Total Market) | - | - | 1,031 | about 0.05 |
| LIC MF Small Cap Fund | 210,896 | 0 | - | exited Aug-26 |
| Union Active Momentum Fund | 284,635 | 0 | - | exited Aug-26 |
| Total | 1,471,665 | 1,111,813 | 1,215,338 | |
Only Jul-Sep 2026 retrieved; Jun-26, Oct-26 and earlier months: nothing verified. Arihant Capital (undated page) also lists Samco Small Cap, Samco Special Opportunities and Samco Multi Cap: UNVERIFIED, absent from the Trendlyne Jul-Sep list. The only active MF adding is TrustMF (Jul +69.8%, Aug +13.9% on Trendlyne percentages). Sep-26 buying is index funds, mechanical after index inclusion.

## 4. Surveillance
| Item | Finding | Source |
|---|---|---|
| BSE Short Term ASM Stage I | 20-Jan-2025 to 28-Jan-2025; 03-Feb-2025 to 25-Feb-2025 | Trendlyne ASM page 18-Nov-2026 [S] |
| BSE Long Term ASM Stage I | entry 08-May-2026, exit 14-Aug-2026 | same [S] |
| GSM | none listed | same [S] |
| Status on 18-Nov-2026 | "Not active in ASM or GSM" | same [S] |
| NSE LTASM | A search summary says an NSE circular of 08-May-2026 (effective 11-May-2026) lists AEROFLEX; Sharpely says "LTASM-I (13)". I could not open the circular (mirror 404). Primary confirmation: nothing verified | [S, UNVERIFIED] |
| Price band change | Nothing verified. Samco snapshots imply a 10% band (inferred by the search tool, not stated). Upper circuit on 07-May-2026 (DSIJ 08-May-2026). Whether the BSE circular of 08-May-2026 revising 26 scrips names Aeroflex: not confirmed | [S] |
| Exchange clarification on price move | None found for Aeroflex Industries. NSE price-movement clarifications of 17/20/21-Apr-2026 and 23-Jun-2026 concern Aeroflex ENTERPRISES (symbol AEROENTER), a different company | [S] |
Timeline: LTASM entry 08-May-2026 followed a 43% weekly rise (DSIJ 08-May-2026). On 12-Oct-2026 the stock rose 10.8% to a record Rs 599.70 intraday (more than 52 lakh sh, above Rs 300 cr traded) two days before the 14-Oct-2026 capex board meeting; no clarification found (Kotak Neo 12-Oct-2026) [S]. Fact pattern only; no evidence of misuse found or sought.

## 5. Index membership and F&O
Fetched 18-Nov-2026 from niftyindices.com constituent CSVs [P, index provider files]:
| Index | Aeroflex listed? |
|---|---|
| Nifty Total Market (ind_niftytotalmarket_list.csv) | YES (Capital Goods) |
| Nifty Microcap 250 | YES |
| Nifty 500, Smallcap 250, MidSmallcap 400, Smallcap 50 | NO |
| BSE Industrials | screener tag only [S] |
F&O: AEROFLEX is absent from NSE fo_mktlots.csv (226 lines, fetched 18-Nov-2026) [P]. It is not in F&O. It is not in Nifty 500, and Smallcap 250 is ranks 251-500 of Nifty 500, so a Smallcap 250 entry needs a Nifty 500 entry first. Cutoff market cap, next review date, and whether Rs 6,577 cr clears it: nothing verified (full-market-cap ranks not pulled). The Sep-2026 review did not add it (absent from the Nov-2026 list). Passive demand today is small: the Microcap 250 index fund holds 102,494 sh.

## 6. Delivery and liquidity [S, aggregators, not exchange bhavcopy]
- Stockezee 18-Nov-2026: latest delivery 29.1% vs 20-day average 27.5%; peak 41% on 16-Nov-2026; 20-day average volume 51.60 lakh sh (page internally inconsistent on the latest day volume).
- Trendlyne 18-Nov-2026: 1.7 mn sh NSE+BSE that day, about Rs 84 cr [D: 1.7 mn x Rs 494.6].
- 20-day average traded value [D]: 51.6 lakh x about Rs 497 = about Rs 256 cr a day. Price assumption stated; volume UNVERIFIED.
- 12-Oct-2026: more than 52 lakh sh, above Rs 300 cr (Kotak Neo). 12-Mar-2026: delivery 25.3%, 20-day average 28.5%, 20-day average volume 3.44 mn (Stockezee).
- Reading: delivery in the high 20s % means roughly 70% of volume is intraday, in line with the prop/HFT deal list in section 2. Non-promoter float about 34.5%.

## 7. Promoter pledge
- 09-Feb-2026 SHP filing: pledge No, non-disposal undertaking No, other encumbrance No [P].
- Trendlyne: 0.0% pledged every quarter Mar-24 to Sep-26 [S].
- Whalesbook "zero pledges FY26" concerns Aeroflex ENTERPRISES own promoter entities (SAT Invest, A Flex Invest) and their Enterprises shares, not Industries shares [S]. NSE pledge API and Reg 31 filings: nothing verified.

## 8. Scuttlebutt (lower reliability unless tagged [P])
1. COO Kiran C. Kagalkar resigned w.e.f. 30-Jun-2025, "personal reasons" (filing 20-May-2025) [P]. CS and Compliance Officer Kinjal Shah resigned w.e.f. 15-Jul-2025 (filing 15-Jul-2025) [P]. Successor CS or COO: nothing verified. Two senior exits in 8 weeks, before the skid ramp.
2. The "change in management 18-Jun-2026" filing is NOT a departure [P]. Board outcome of 18-Jun-2026: Shweta Jain & Co. LLP re-appointed statutory auditor (second 5-year term, subject to AGM); D M Jain & Co internal auditor; Rampurawala Mohammed A & Co cost auditor; 9,500 ESOPs granted; three promotions to Senior Management Personnel: Shah Alam (GM R&D, Engineering and Design, 30 yrs), Anshul Gupta (VP Export Sales, 23 yrs, US/Canada/S America), Narender Bhakhri (GM Procurement and Supply Chain, 40 yrs). Mustafa Kachwala re-appointed Whole Time Director 01-Apr-2026 to 31-Mar-2029 [S, NSE filing snippet].
3. A new skid plant at Chakan (MIDC), Pune is stated by the company [P]; which site carries the new lease is inference. Q3FY26 call 29-Jan-2026: "new plant at Chakan in Pune" for skid assembly. Q4FY26 deck lists Chakan: skid 6,000 assemblies, and Hyd-Air. Q1FY27 call 28-Jul-2026: employee cost up from ramp at Taloja and "the new facility coming up in Chakan"; plus a new facility for hose assemblies for an international customer. Q2FY27 call 29-Oct-2026: Rs 124 cr hose programme = brownfield at Taloja plus a "proposed new manufacturing facility for hose assemblies" (site not named). Sep-26 results: non-current lease liability Rs 20.70 cr vs Rs 5.52 cr [P Results_Sep2026.txt]. The filings do not say which site carries the new lease; Chakan is the likeliest [inference]. Palava/Lodha: nothing found. Taloja is the existing plant.
4. Customer clues [P, transcripts]. Q3FY26 call 29-Jan-2026: exclusivity "for the next 5 years" with a US-based company; Q4FY26: exclusive agreement for the India market to supply skid assemblies. Q2FY27 call 29-Oct-2026: "working with one customer exclusively for India... this very large U.S. multinational company"; MD adds "the biggest player in this industry is vertiv energy globally... also the biggest ones in India". Asked about Vertiv 800 VDC data centres, he answers "the design team of Vertiv works in close connection with our design team". He never says in these transcripts that Vertiv is the customer; confidentiality is cited. Vertiv is strongly implied, not confirmed. Timing: exclusivity was stated on the 29-Jan-2026 call, before the 03-Feb-2026 allotment and after the 18-Dec-2025 pricing date. Outside India no exclusivity; talks with "a few" prospects. Q1FY27 call: orders already from European customers for data-centre hose assemblies.
5. US shipment data [L: Panjiva and ImportKey, 18-Nov-2026]. Top US consignees: Victaulic Company of America (103 + 25 shipments), Midwest Hose & Specialty (30 + 17), Metraflex (23). Ports: JNPT, Norfolk, Houston. No Vertiv, Schneider, nVent, CoolIT or skid/CDU consignee visible; product fields are redacted and 78 customers sit behind a paywall. Absence in teaser data proves nothing about skids. Volza, Seair, Zauba export pages: not found.
6. Hiring [L]: public listings for a TIG welder at Taloja MIDC, a welder at Kalyan West (Rs 20,000-35,000 a month), trainee quality engineer, machine operator, and a campus drive (Feb-2026). No liquid-cooling, business-development or US-sales postings indexed. Posting volume on Naukri/LinkedIn: nothing verified.
7. AmbitionBox [L]: 3.8/5 on about 46-50 reviews (snapshots Dec-2024 and May-2025; one shows 3.9 on 43). Career growth about 3.3, culture about 3.6, job security about 3.5-3.6, no work from home, below the Iron & Steel average of 3.9. Stale against the 2026 ramp. Glassdoor: nothing verified.
8. Trade shows [L]: Singapore Tech Week, stand P09, data-centre cooling hoses and bellows (page dates inconsistent, 2026 vs 13-14 Oct 2027). On the 28-Jul-2026 call the MD cites 15 products shown at an international exhibition in April-2026 and a US showing; some already had European orders [P]. "90+ countries" is company self-description.
9. Media: no standalone 2026 interview of MD Asad Daud found, only call transcripts and news built on them (FY27 guidance of 30-35% revenue and profit growth, NewsBytes). ValuePickr: no Aeroflex thread surfaced in two searches. Social or forum discussion of the skid customer and the allottees: nothing verified.

## Incidental findings
- Income Tax demand Rs 41,75,88,940 (about Rs 41.76 cr), AY 2018-19, order dated 25-Mar-2026, disallowance of waiver of interest on working-capital loans; company will appeal and says no material impact [S: Whalesbook, ScanX; company NSE letter of 08-Apr-2026 not read]. A separate CGST Raigad demand of Rs 3.60 cr plus equal penalty, Rs 7.19 cr, on input tax credit [S]. FY26 PAT Rs 55.5 cr (working-notes) for scale.
- Parent Aeroflex Enterprises sold its MR Organisation stake for Rs 227.42 cr (30-Apr-2026) and its promoter entity A Flex Invest bought parent shares in open market in Jun-2026; parent price about Rs 105-113 then [S]. Parent also acquired a valves company (Q2FY27 call question).
- Whalesbook pages mix Aeroflex Industries and Aeroflex Enterprises; check the entity on every item.

## Addendum after review (supersedes earlier lines where they differ)
- [P] Allotment filing (company/Intimation_of_Allotment_of_30_10_398_equity_shares_on_preferential_basis.txt) pre/post table: Kacholia 25,98,080 (2.01%) + 4,10,509 = 30,08,589 (2.27%); Bengal Finance 23,15,935 (1.79%) + 4,10,509 = 27,26,444 (2.06%); Surana, R K Investments (partnership firm, via Vaibhav Jayantilal Shah), Madhu Silica, Nareshkumar Mahasukhlal Mehta: pre-holding ZERO, so all four first appeared on the 03-Feb-2026 allotment. Sep-2026 holdings of Kacholia (3,008,589) and Bengal (2,726,444) per Trendlyne equal the post-issue figures to the share: no purchase and no sale since allotment [P pre/post + S Sep-26]. Kacholia and Bengal are both listed from Dec-2023 (earliest quarter in the data), so they are at least that old.
- [D from P] Feb-2026 SHP shows 79,24,413 sh locked (5.99%) = 30,10,398 new + 25,98,080 + 23,15,935 exactly. So the pre-issue holdings of Kacholia and Bengal were also locked, not just the new shares. Lock-in tenor for the old holdings (ICDR usually 90 trading days from trading approval) is not stated in the SHP: UNVERIFIED. The Sep-26 SHP therefore covers only about 7 weeks after the six-month lock-in on new shares; selling by the four zero-base allottees after that is not visible in any data retrieved.
- FPI mix [D]: Category II FPIs rose from 10,781 sh (Feb-26 [P]) to 29,66,056 sh (Sep-26 [S]), +29,55,275 sh, about 65% of the FPI increase from 6,81,006 to 51,95,991 sh (+45,14,985). Names still unknown.
- Company Secretary after Kinjal Shah: Ruthu John Parampogi signs as CS and Compliance Officer on 18-Jun-2026 [P: company/Intimation_of_change_in_Management_18.06.2026.txt]. Appointment date: nothing verified. COO successor: nothing verified.
- Capacity-expansion filings in company/ (18-Dec-2025, 01-Apr-2026, 14-Oct-2026 and the two others) contain no match for Chakan, lease or premises. Site naming comes only from call transcripts and decks.
- Smallcap 250 review rule: factsheet ind_Nifty_Smallcap_250.pdf (30-Oct-2026) in source-docs/flows was read only for its header and lists no Aeroflex; no eligibility cutoff was extracted. Item stays nothing verified.
- Not done: NSE in-page API route (harness blocked the eval command; to run from the main session: CHROME_DEVTOOLS_AXI_HEADED=1, open nseindia.com, fetch /api/corporate-share-holdings-master?index=equities&symbol=AEROFLEX, /api/corporate-pledgedata, /api/historical/bulk-deals). Company investor-page SHP PDFs and nsearchives bhavcopy (delivery) were not tried. These would turn the retail/HNI split, FPI names, bulk-deal exchange check and delivery series from secondary to primary.

### Bulk/block rows since 19-Dec-2025 (Trendlyne, Buy qty@Rs / Sell qty@Rs; all NSE) [S]
- 19-Dec-2025: Pace 667,106@198.19 / 667,375@198.33; Musigma 733,895@198.63 / 733,895@198.77; QE 805,852@197.42 / 821,701@198.23; Junomoneta 800,747@197.96 / 802,371@198.17
- 29-Jan-2026: HRTI 908,757@183.29 / 819,967@184.14; NK 1,095,220@186.03 / 1,095,220@186.14; Junomoneta 1,197,593@185.30 / 1,198,443@185.40; Microcurves 885,306@186.11 / 885,306@186.24; QE 896,511@185.04 / 934,177@185.04
- 18-Feb-2026: NK 1,191,728@225.81 / 1,191,728@225.88; QE 912,947@226.16 / 928,446@225.21; HRTI 1,003,551@225.17 / 850,041@225.27; Junomoneta 975,451@225.62 / 977,053@225.67
- 07-May-2026: QE 725,159@385.76 / 792,589@388.39; Junomoneta 802,493@388.25 / 805,207@388.68
- 08-May-2026: Junomoneta 911,254@427.24 / 907,281@427.58; HRTI 721,952@426.37 / 601,026@428.36; QE 694,266@424.65 / 732,257@425.66
- 29-Oct-2026: AlphaGrep 1,315,179@553.64 / 1,315,179@551.93; Microcurves 1,374,174@556.24 / 1,372,566@556.19; Junomoneta 867,992@553.59 / 866,034@553.73; HRTI 705,798@554.31 / 672,075@550.69; QE 1,400,910@554.00 / 1,379,804@550.75
- 30-Oct-2026: QE 670,611@540.12 / 677,056@540.04
Earlier rows (Aug-2023 to Jul-2025, 88 rows, same pattern, Graviton, HRTI, QE, NK, Aakraya, Musigma, Elixir, Irage, Share India, Pace, Microcurves, AlphaGrep) not reproduced; the page is the source. Largest day: 20-Jun-2025 (about 23.0 mn shares bought across 14 entries at Rs 206-210 [D, sum of listed buy rows]).

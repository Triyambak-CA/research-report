# Aeroflex Industries - notes 03: annual report forensics (FY20-FY27 H1)

Run 18-Nov-2026. Rs crore unless stated (filings are in Rs lakh; 100 lakh = 1 crore).
Sources are under source-docs/ (not versioned). "ARFY26 p137" = PDF page 137 of ar/AR-FY26.pdf
(the printed folio is about PDF page + 20). Verbatim quotes have had en dashes replaced with hyphens.
Labels: **[E]** = established from the filing; **[I]** = inferred, with the reasoning shown;
**[U]** = UNVERIFIED, do not publish as fact.

## Severity-ranked findings

| # | Severity | Finding | Status |
|---|---|---|---|
| 1 | HIGH | FY26 margin expansion is entirely forex. Rs 15.03 cr of exchange gains sits in revenue from operations. On product sales the margin was flat at about 19.7%, and PBT excluding forex FELL about 7% (63.6 to 59.0). | E (arithmetic on audited notes) |
| 2 | HIGH | WDV to SLM from 01-Apr-2026 adds about Rs 17 cr a year to PBT (about 23% of FY26 PBT). It sits on top of a 25-year plant-and-machinery life that is already longer than Schedule II's 15 years for general plant. The Q2 FY27 depreciation charge was Rs 0.45 cr. The company's stated PAT effect (8.23 on 8.41 PBT) is wrong in the note, though the P&L books the deferred tax correctly. The CFO change was approved at the same 28-Oct-2026 board meeting. | E (numbers), I (motive) |
| 3 | HIGH | Tax overhang. An income-tax demand of Rs 41.76 cr (s.147 reassessment; OTS interest waiver taxed as "undisclosed business income"; s.270A penalty initiated) equals about 75% of FY26 PAT. A GST s.74 order of Rs 7.19 cr covers credit on IPO expenses. The Rs 77.61 cr GST refund show cause notice disclosed in FY25 is ABSENT from the FY26 AR with no explanation. | E (disclosures), U (fate of the 77.61 cr notice) |
| 4 | HIGH | Export receivables overdue under FEMA, with no RBI extension, for three straight years: 32.35 / 53.37 / 39.22 cr (FY24 / FY25 / FY26), i.e. 30-46% of trade receivables. This does not reconcile with the ageing schedule. The loss allowance is 0.58 cr against 10.61 cr more than one year past due. The AR claims "no concentration of credit risk" while the MD says one customer is 25-26% of sales and skids go to one US MNC. | E (numbers), I (reconciliation gap) |
| 5 | MED-HIGH | Promoter-group UAE entity Italica Global FZC (Ajman Free Zone; 5.6% shareholder): sales to it rose 8x to 22.56 cr in FY26, and a new business-development fee was paid TO it. Its FY23 PAT margin was 42%. No related-party outstanding balances are disclosed in any year. | E (flows), I (value capture), U (pricing) |
| 6 | MED | Hyd-Air bought for Rs 17.21 cr, about book value AFTER a Rs 11.70 cr revaluation booked in the seller's FY24 books days before the SPA (02-Apr-2024). Goodwill (1.27 cr) equals price minus book value, not fair value; there is no Ind AS 103 purchase-price note. The acquisition is not shown separately in the cash flow, and acquired PPE is buried in "additions". There is no unrealised-profit elimination on Rs 6.66 cr of intra-group stock. | E |
| 7 | MED | Auditor quality signals: statutory audit fee of Rs 3.0 lakh (standalone) on Rs 442 cr revenue; co-auditor S S N & Co resigned 02-May-2022, pre-IPO; same partner since at least the restated FY23 audit. Multiple note errors pass audit: ROU labelled "pursuant to business combinations", "not holding any leased assets", Note 35 carrying prior-year figures, two loss-allowance figures. | E |
| 8 | MED | IPO costs borne by the company were Rs 25.99 cr (16% of the 162 cr fresh issue), of which 3.59 cr was GST credit now disputed under s.74 (fraud or suppression section) with a 100% penalty. Whether the company bore part of the promoter's OFS costs is UNVERIFIED (the RHP is not on disk). | E (amounts), U (split) |
| 9 | MED | Disclosure timeliness and accuracy: the IT order was disclosed late (self-admitted); the AR dates the GST order 30.03.2026 while the Reg 30 filing says 07-Apr-2026; the secretarial compliance report for FY26 reports "NA" deviations. | E |
| 10 | LOW-MED | Governance: 2 of 4 independent directors also sit on the promoter's board, and one sat on M.R. Organisation (a promoter-group company paid 3.56 cr in FY25) until 30-Apr-2026. 99% of CSR goes to SAT Foundation (a director's relative is trustee). The COO lasted 5 months; the CS left Jul-2025; the CFO changed Nov-2026. | E |
| 11 | LOW | Depreciation doubling FY25 to FY26 (11.27 to 26.08) is explained: late-FY25 capex, Hyd-Air assets, a new ROU, and short building lives. Not a red flag on its own. | E |
| 12 | LOW | Cash conversion: FY26 CFO of 65.8 cr was helped by +23.9 cr of payables (days payable 94 to 117). H1 FY27 CFO was 38.2 against PAT 55.4. | E |

**Earnings-quality score: 4/10.** The core business is real and cash-generating; FY26 CFO/EBITDA was 85%. But all of FY26's margin gain is forex, FY27's step-up is largely the depreciation switch, and a tax overhang of Rs 49-127 cr sits outside the P&L.

---

## 1. Depreciation: FY25 to FY26 doubling, and the WDV to SLM switch

### 1a. Why depreciation more than doubled (11.27 to 26.08 cr) [E]
ARFY26 p114-117, Notes 3, 3.2, 4 and 27 (consolidated, Rs lakh):

| Component | FY25 | FY26 | Driver |
|---|---|---|---|
| PPE depreciation | 1,090.43 | 2,324.76 | see below |
| of which buildings | 285.33 | 575.02 | 23.5% of opening NBV 2,446.62 |
| of which plant and equipment | 615.97 | 1,395.18 | opening NBV 10,407.65 at about 11.3% WDV, plus a half-year on 4,473.85 of additions |
| ROU (new lease) | 0 | 246.85 | ROU of 987.39 created in FY26 |
| Software | 36.80 | 36.14 | - |
| Total | 1,127.23 | 2,607.74 | Note 27 labels 282.98 as "amortisation" |

- FY25 gross additions were Rs 102.64 cr consolidated (ARFY25 p134). Of this, 77.13 cr was standalone (land 0.60, buildings 13.83, P and M 57.10; ARFY25 p186). About 25.5 cr was Hyd-Air assets, of which land was 11.16 cr.
- Back-solving FY25 P and M depreciation of 615.97 at the ~11.3% WDV rate implies the FY25 additions carried only about 2 months' depreciation on average. Most FY25 capex therefore landed in Q4 FY25 [I]. This explains quarterly depreciation stepping from 2-3 cr to 4 cr (Q4 FY25) and then 6 cr (Q1 FY26).
- Buildings at 23.5% of NBV are far above the 30-year factory-building WDV rate of about 9.5%. A large share of building cost must sit in the policy class "Addition to factory building 3 - 10 Years" (ARFY26 p104) [I]. This is likely the fit-out of the Palava (Lodha Industrial and Logistics Park) Unit 2 capitalised in FY25 (ARFY25 p120) [I].
- Verdict: **explained, and not a red flag in itself.** It also shows how front-loaded WDV is on a fresh asset base. That front-loading is exactly what the SLM switch reverses.

### 1b. Policy as stated in the FY26 AR [E]
ARFY26 p104 (consolidated) and p161 (standalone), verbatim: "Depreciation is provided (other than free hold land and capital work-in-progress) on Written Down Value (WDV) method for the estimated useful life of assets as per Companies Act 2013." The table lists:

- Factory building: 30 Years
- Addition to factory building: 3 - 10 Years
- Plant & machinery: 25 Years
- Electrical installation: 5 Years
- Testing equipment: 5 Years
- Vehicles: 6 Years

These lives are unchanged from ARFY24 p73 and ARFY25 p123.

- **A 25-year life for plant and machinery is not "as per Companies Act 2013" for general plant.** Schedule II Part C gives 15 years for general P and M; 25 years is for continuous-process plant. The AR gives no technical justification for the longer life [I, legal reading]. On SLM, 25 years means about 3.8% a year, against 6.33% at 15 years.
- The FY26 AR (authorised 05-May-2026; ARFY26 p139 Note 47) is silent on the change effective 01-Apr-2026. It has no subsequent-event note and no Ind AS 8 para 39 future-effect disclosure. The Q1 FY27 results (27-Jul-2026) were still on WDV, so the decision was taken in Q2 [E].
- **Auditor comment:** the FY26 KAM A says only "We have reviewed management judgment pertaining to estimation of useful life and depreciation of the Property, Plant and Equipment" (ARFY26 p85). The Q2 FY27 limited review is unmodified, with no emphasis paragraph (working-notes item 10) [E].

### 1c. Quantification [E/I]
- **Company figures.** Results_Sep2026 note 5 says H1 FY27 consolidated depreciation is "lower by Rs 841.25 lakhs". Had WDV continued, depreciation would have been Rs 1,670.42 lakh for H1 and Rs 886.01 lakh for Q2.
- **Reported Q2 depreciation is Rs 44.76 lakh** (render of Results_Sep2026 p4). The footnote: "The depreciation and amortization expense for the quarter ended September 30, 2026 represents the balancing figures to align depreciation from April 1, 2026 to September 30, 2026 with the Straight Line Method (SLM), since depreciation for the quarter ended June 30, 2026 was calculated under the Written Down Value (WDV) method."
- **Annualised uplift: about Rs 17 cr PBT a year** (2 times 8.41). That is about 23% of FY26 PBT (74.08), or about Rs 12.6 cr of PAT at 25.17%, again about 23% of FY26 PAT (55.53). The gap widens as the Rs 202 cr Phase-2 capex is capitalised [I].
- **Tax-effect consistency.**
  - The company states consolidated H1 PBT +841.25 and PAT +823.48. That implies tax of 2.1%.
  - Standalone it states PBT +769.02 and PAT +769.46. A PAT effect larger than the PBT effect is impossible.
  - Tax depreciation under the Income-tax Act does not depend on the book method. So the full uplift should attract deferred tax at about 25.17%, and the correct consolidated PAT effect is about Rs 6.29 cr. **The note overstates the PAT effect by about Rs 1.9 cr.**
  - The P&L itself does book the deferred tax: Rs 198.05 lakh in Q2 and Rs 192.45 lakh in H1. Consolidated DTL rose from 89.79 to 282.24 lakh between Mar-26 and Sep-26 (Results_Sep2026 p4, p6).
  - **Verdict: the disclosure note is wrong, but reported PAT is not overstated by the tax error** [E].
- **Q2 catch-up.** Q2 FY27 reported PAT of 36.56 includes Q1's catch-up. Properly split, Q2 PAT is about 34.0; on WDV it is about 28.3 (working-notes item 1).
- **Timing [I].** The same 28-Oct-2026 board meeting dealt with three things: the Q2 results that carried the method change; the CFO handover (Mustafa Kachwala's CFO tenure "completion" on 27-Nov-2026, with Ms Drashti Bhil re-designated CFO from 28-Nov-2026; Outcome_of_BM_28.10.2026); and the Hyd-Air amalgamation, with an appointed date of 01-Apr-2026. This is coincidence of timing only. There is no evidence of linkage.
- **Counter-argument.** SLM is common among Indian listed peers, and Ind AS 16.61 allows the change as a change in estimate. WDV on a young asset block understates economic profit. All true. But the switch came as capex accelerated, which is where WDV bites hardest. It rests on lives already longer than Schedule II, and the company has given no detail of the technical evaluation.
- **Verdict:** a permissible policy that flatters reported growth. Strip about Rs 17 cr PBT from FY27 to compare it with FY26. Ask management for the technical evaluation behind the 25-year life for plant and machinery.

## 2. FY25 fixed-asset jump (83 to 172) and the Hyd-Air acquisition

| Item | Rs cr | Source |
|---|---|---|
| Consolidated PPE additions, FY25 | 102.64 | ARFY25 p134 |
| Standalone PPE additions, FY25 | 77.13 | ARFY25 p186 |
| Implied Hyd-Air contribution (acquired assets plus its own FY25 capex) | about 25.5 (land 11.16, buildings 4.85, P and M 8.92) | difference of the two rows above |
| Hyd-Air PPE at 31-Mar-2024 | 13.25 | Hyd-Air FY25 balance sheet (rendered p7) |
| Hyd-Air revaluation reserve created in FY2023-24 | **11.70** ("Revaluation of assets 1,169.80") | Hyd-Air FY25 Note 17 (rendered p12) |
| Purchase price (2,924 shares, 100%) | 17.21 (Rs 17,20,86,172) | Acquisition update 02-Apr-2024; completion filing 04-Apr-2024 |
| Hyd-Air book net worth at 31-Mar-2024 | 15.94 | Hyd-Air FY25 balance sheet |
| Goodwill recognised | 1.27; 126.75 lakh = 1,720.86 minus 1,594.11 exactly | ARFY25 p153 Note 40 |
| Further loan to Hyd-Air, converted into equity in FY25 | 10.59 | ARFY25 p161, CARO clause iii(a) |
| Loan to Hyd-Air in FY26, repayable on demand | 5.25 granted; 5.40 outstanding | ARFY26 p145 |

- **[E]** Hyd-Air had FY24 revenue of 8.06 cr and a loss of 2.41 cr. Before the revaluation its net worth was about 4.24 cr (15.94 minus 11.70). Aeroflex paid about 4 times that.
- **[E] Goodwill is book-based, not fair-value-based.** Note 40 defines goodwill as "the excess of the purchase price over the fair value of the identifiable net assets". Yet the number equals the price minus the target's own book value. There is no Ind AS 103 purchase-price allocation, no fair-value table and no acquisition-date disclosure. In effect, the "fair value" of the land is a revaluation booked in the seller's accounts at 31-Mar-2024, two days before the 02-Apr-2024 share purchase agreement. The valuer is not named [U].
- **[E] The acquisition is folded into "capex" in the cash flow.** The consolidated cash flow has no "acquisition of subsidiary, net of cash acquired" line, which Ind AS 7 para 39 requires. Instead it shows "Purchase of property, plant & equipements & intangibles including CWIP (10,346.28)" and "Goodwill in subsidairy (126.75)" (ARFY25 p115). FY25 "capex" therefore includes the acquired assets.
- **Seller.** Neither filing names the seller. Nadir Karachiwala, the founder, stayed on as Hyd-Air MD. The Aeroflex KMP list includes him as "Director" (ARFY26 p131), and the acquisition update describes him as an advisor. **There is no evidence he is related to the promoter group, but the seller's related-party status is UNVERIFIED.**
- **Palava and the lease.** FY25 standalone building additions of 13.83 cr coincide with the new Palava Unit 2 bellows and composite-hose facility (ARFY25 p120). The AR does not say whether it is owned or leased.
  - FY26 Note 44.07 says "the group is not holding any leased assets which are required to be disclosed separately".
  - Yet Note 3.2 shows an ROU of Rs 9.87 cr "Additions pursuant to business combinations", in a year with no business combination (ARFY26 p116, p138).
  - **The lessor and the leased premises are unidentified [U].**
- **Maintenance capex against depreciation.** FY26 cash capex of 71.09 cr reconciles to PPE additions 57.49, plus intangibles 0.34, plus the CWIP increase of 13.26. Depreciation was 26.08 cr. This is growth capex; maintenance capex is not disclosed.
- **Verdict:** the step-up is real capex (the Taloja expansion, Palava, Lodha bellows) plus Hyd-Air. The acquisition accounting is book-based and leans on a pre-sale write-up. The amount is small (goodwill 1.27 cr), but it is a quality signal.

## 3. Other income, forex, and the negative years

**Screener's "Other income" nets other income against exceptional items.** The negative years are foreign-currency term loan (FCTL) exchange losses booked as exceptional items, while trade forex GAINS are booked inside revenue from operations.

| Year | Other income (cr) | Exceptional items (cr) | Forex gain inside revenue (cr) | Source |
|---|---|---|---|---|
| FY19 | 0.26 | nil | 2.13 | FY20 financials, P&L and revenue note (OCR p15, p44) |
| FY20 | 0.60 | -3.57 = profit on sale of fixed assets 1.99, impairment of fixed assets (1.75), "FCTL Exchange Fluctuation (38,160,195)" i.e. (3.82) | 2.39 | Financials_for_FY_2019-2020 (OCR p15, p44) |
| FY21 | ~0.05 | "FCTL Exchange Fluctuation" (1.62) | n/a | Restated FS Note 32 (rendered) |
| FY22 | ~0.19 | +0.41, FCTL gain | n/a | Restated FS Note 32 (rendered; legibility poor) |
| FY23 | ~0.02 | FCTL exchange fluctuation (3.08) | 5.31 | ARFY24 p66 (307.71 lakh) and p88 |
| FY24 | n/a | nil; FCTL loss of 0.47 cr moved into finance cost | 3.91 | ARFY24 p88, p90 |
| FY25 | 2.53 (FD interest 2.30) | nil | 6.37 | ARFY26 p126 |
| FY26 | 1.36 (FD interest 1.29) | nil | **15.03** | ARFY26 p126 |

- **The FCTL was the Kotak Mahindra Prime takeover-era loan**, registered 01-Aug-2018 for Rs 55 cr. Its terms: "TL - Fixed 21.00%; FCTL - Floating ROI at LIBOR + 13.50%", secured by a pledge of 30% of Aeroflex shares owned by "Mr. Yusuf Kagzi" (Register_of_Charges p2) [E]. It was repaid from the IPO proceeds (Rs 32 cr debt-repayment object).
- **The accounting policy puts restatement gains in revenue.** ARFY26 p107, verbatim: "Profit and gains from the foreign exchange fluctuation from the receipts & payments of debtors & creditors and also the fluctuation on restatement of their balances at the year ended is forming part of the other operating revenue of the group." Unrealised year-end restatement therefore inflates revenue and EBITDA.
- **FY26 margin expansion is entirely forex [E, arithmetic].**
  - EBITDA = PBT + depreciation + finance cost - other income: FY26 99.74 cr; FY25 79.05 cr.
  - Reported OPM on revenue from operations: FY26 22.6% (99.74 / 441.94); FY25 21.0% (79.05 / 376.23).
  - Excluding forex, on product sales plus miscellaneous operating revenue: FY26 19.8% (84.71 / 426.90); FY25 19.7% (72.68 / 369.86). **Flat.**
  - PBT excluding forex: FY26 59.05 against FY25 63.58, **down 7%**. Reported PBT was up 5.9%.
  - Forex was 15% of FY26 EBITDA and 20% of FY26 PBT.
- **Counter-argument.** For an exporter earning 60%+ of revenue in USD and EUR, part of the rupee-depreciation gain is economic. Treating trade forex as operating is common in Indian exporters. The FY26 gain also reflects a large INR move. But the company does not hedge (Note 37 shows open receivables of about USD 8.4 mn equivalent), so this line reverses when the rupee strengthens. The point is presentation: in the past, losses went below the line as "exceptional" while gains went into revenue.
- **Verdict:** asymmetric presentation. Analysts should strip forex from EBITDA. The "FY26 margin expansion" narrative does not survive that adjustment.

## 4. Related-party transactions, FY21-FY26

Group map [E]:
- Aeroflex Enterprises Ltd (formerly Sat Industries) is the holding company: 61.23% after the IPO (ARFY24 p85).
- Italica Global FZC is a wholly owned subsidiary of the holding company. It is registered in the Ajman Free Zone, UAE, with the email ig@satgroup.in, and holds 74,54,830 shares, or 5.76% (ARFY24 p85).
- M.R. Organisation Ltd is a subsidiary of the holding company.
- SAT Foundation is a trust in which a director's relative is a trustee.
- MD Asad Daud is also a non-executive director of Aeroflex Enterprises and of Aeroflex Neu (formerly Sah Polymers) (ARFY26 p60).

| Rs lakh | FY21 | FY23 | FY24 | FY25 | FY26 | Source |
|---|---|---|---|---|---|---|
| Interest paid to related parties | 235.4 (to related parties, finance-cost note) | 7.69 (Sat Industries, loan) | - | - | - | Restated Note 29; ARFY24 p93 |
| Sales to Italica Global FZC | n/a | 374.03 | 581.23 | 283.91 | **2,256.19** | ARFY24 p93; ARFY26 p132 |
| "Business Development Service" paid TO Italica | - | - | - | - | **36.45** (new) | ARFY26 p132 |
| Dividend to Italica | - | - | - | 18.64 | 22.36 | ARFY26 p132 |
| Dividend to Aeroflex Enterprises | - | - | - | 197.95 | 237.55 | ARFY26 p132 |
| M.R. Organisation, "Machine Maintenance Services" | - | - | - | **356.36** | - | ARFY26 p132 |
| SAT Foundation, CSR donation | - | 30.50 | 57.50 | 88.80 | 111.00 (99% of CSR spend of 112.23) | ARFY24 p91; ARFY26 p130 |
| MD remuneration (Asad Daud) | - | - | - | 115.41 | 126.51 | ARFY26 p132 |
| WTD and CFO remuneration (Kachwala) | - | - | - | 13.04 | 13.62 | ARFY26 p132 |
| Hyd-Air (wholly owned subsidiary): sales TO / purchases FROM / loan | - | - | - | 666.28 / 53.47 / 2,780.22 equity | 6.21 / 209.52 / 525 loan, 21.76 interest | ARFY26 p189 |

**Findings**
- **[E] Sales to Italica rose 8x in FY26, to 5.1% of revenue.** The increase of 19.72 cr is about 35% of the 56.7 cr rise in product sales. In the same year Aeroflex began paying Italica a "business development" fee.
  - Italica's own reported numbers (Italica_Global_FZC filing, Rs lakh): FY23 total revenue 900.80, PAT 382.36 (a 42% net margin); FY22 652.64 and 160.83; FY21 96.93 and 66.14.
  - In FY23 Aeroflex sold Italica 374.03. **[I]** If Italica's revenue is largely resale of Aeroflex product, Italica earns a large mark-up in a zero-tax free zone. That would move margin from Aeroflex's minority shareholders to the 100% promoter-owned entity.
  - **[U]** Italica's product mix, its end customers, its FY24-FY26 financials, the transfer prices, and whether any part of the FEMA-overdue export receivables is owed by Italica are all unknown.
  - **Counter-argument:** Italica may be a Middle East distributor that adds service and credit risk, and a 42% margin on a small base can come from other Sat-group trading. The transactions are below the Reg 23 materiality threshold (10% of turnover) and were approved by the audit committee (ARFY26 p147, CARO xiii).
- **[E] No closing balances are disclosed for any related party in FY24-FY26.** The related-party note lists only transaction flows. Ind AS 24 para 18(b) requires outstanding balances, terms and guarantees. Receivables from Italica and the payable or receivable position with Hyd-Air are therefore not visible.
- **[E] M.R. Organisation was paid 3.56 cr for machine maintenance in FY25.** That is twice the group's entire FY25 "Repair & maintenance" line of 1.76 cr (ARFY26 p128). **[I/U]** It was either booked in "factory expense" or "stores", or capitalised into the FY25 capex. Which one is unknown.
- **[E] CSR stays inside the group orbit.** 99% of CSR (FY26: 111.00 of 112.23) goes to SAT Foundation. This is permitted if the trust is CSR-1 registered, but the money stays with the group.
- **[E] No guarantees and no loans to the parent.** CARO clause iv in ARFY26 p146 confirms no s.185/186 guarantees or security. The pre-IPO dependence ran the other way: interest paid to related parties was 2.35 cr in FY21.
- **[E] Remuneration as a share of PAT is low.** MD plus WTD and CFO was 1.40 cr, 2.5% of FY26 PAT (FY25: 2.4%). The MD's remuneration ratio to the median employee is 1:32, after a 15% increase (ARFY26 p50). Whether Asad Daud is also paid by Aeroflex Enterprises is not visible [U].
- **Trend verdict:** flows to and from the promoter group were small until FY26. FY26 brought a step change through Italica. That is the item to watch.

## 5. Auditor, audit opinions, CARO, secretarial

| Item | Detail | Source |
|---|---|---|
| Statutory auditor | Shweta Jain & Co LLP (FRN 127673W/W101149), Thane/Mumbai; partner Priyanka Jaju (M.No. 416197). She signs FY23 (restated), FY25 and FY26 | ARFY25 p160; ARFY26 p139; Restated FS p7 |
| Tenure | S S N & Co (FRN 024352N) were sole auditors from the 24th AGM (2018). Shweta Jain was added as joint auditor at the 27th AGM (2021). **S S N & Co resigned w.e.f. 02-May-2022 "due to pre - occupancy in other assignments"**, i.e. before the DRHP (ARFY23 p13). Shweta Jain's first term ends at the 32nd AGM (2026). Re-appointment for 2026-2031 was recommended on 18-Jun-2026 | ARFY22 p27; ARFY23 p13; Grant_of_ESOP / change-in-management filing 18-Jun-2026 |
| Audit fee (standalone statutory) | FY23 2.50, FY24 2.50, FY25 3.00, FY26 **3.00 lakh**; tax audit 3.00 | ARFY24 p136; ARFY25 p198; ARFY26 p185 |
| Total audit and tax fees, group | Rs 6.00 lakh (CG report); 6.50 in consolidated Note 30 | ARFY26 p78, p129 |
| Opinion | Unmodified, standalone and consolidated, FY24-FY26. No emphasis of matter. Other Matter: reliance on Hyd-Air's auditor (V M Bhageria & Associates) | ARFY26 p87 |
| KAMs FY26 | (A) PPE and CWIP capitalisation (CWIP 2,310.04 lakh); (B) legal and tax contingencies; (C) ROU and lease liabilities (ROU 740.54) | ARFY26 p84-86 |
| IFC | Unmodified, "operating effectively" | ARFY26 p92 |
| CARO 3(ii)(b) | "has not been sanctioned or availed working capital limit in excess of rupees five crores". **Consistent:** Infomerics withdrew its rating on 16-Oct-2023 because the bank facilities were surrendered. There is therefore no quarterly stock-statement test | ARFY26 p145; ratings/infomerics-16oct23 |
| CARO 3(vii)(b) FY26 | Lists IT 4,175.89 (FY 2017-18), GST 359.70 tax + 359.70 penalty, GST 136.18, property tax 72.10. **Omits the 7,761.30 GST show cause notice listed in FY25 CARO** | ARFY26 p146; ARFY25 p162 |
| CARO 3(x)(b) FY26 | Preferential issue "partial utilization ... during the year" (CG: 12.59 cr used by 31-Mar-2026) | ARFY26 p147, p78 |
| Secretarial compliance report (Reg 24A) | FY24 and FY25 (S K Jain & Co) and FY26 (T F Khatri & Associates): deviations "NA" | Annual_Secretarial_Compl* (rendered) |
| Penalties and strictures | "no instance of non-compliance, nor has any penalty, stricture or adverse action" in the last three years | ARFY26 p76 |
| Cost audit | FY25 CARO vi says cost records were "maintained" under s.148. The FY26 Directors' Report says cost-audit provisions "were not applicable" in FY26 and became applicable after year-end (cost auditor appointed 18-Jun-2026) | ARFY25 p162; ARFY26 p44 |

**Findings**
- **[E] The audit fee is very low.** Rs 3 lakh of statutory audit fee for a listed company with Rs 442 cr revenue, a Rs 6,500 cr market cap, four quarterly limited reviews and a consolidation is very low. The fee was flat while revenue rose 40% between FY24 and FY26. It is not evidence of a bad audit, but it limits how much audit effort the fee can buy.
- **[E] Note errors passed the audit.**
  - ROU of 987.39 labelled "Additions pursuant to business combinations" (ARFY26 p116).
  - Note 44.07: "the group is not holding any leased assets" (p138), against KAM C on ROU assets.
  - Note 35 (p131): the total-comprehensive-income column carries the FY25 figures (5,189.81; 49.27).
  - The credit-risk table (p136) shows a nil loss allowance; Note 10 shows 58.10.
  - Total equity is 44,727.35 on the balance sheet (p93) but 44,740.69 in the liquidity note (p137).
  - The FY22 Directors' Report refers to the auditor's reports "for the financial year ended March 31, 2021" (ARFY22 p27).
- **[E] Disclosure lapses not caught by the secretarial auditor.**
  - **Late IT disclosure.** The IT order dated 25-Mar-2026 was disclosed on 27-Mar-2026. The company admits it "could not be made within the stipulated 24-hour timeline" because "concerned personnel were on leave ... on account of Ashtami and Ram Navami" (Intimation_under_Regulation_30_dated_27.03.2026). The FY26 Reg 24A report still says "NA".
  - **[U]** The re-appointment of independent director R C Soni was approved by the board on 03-Jun-2024 but disclosed on 05-Jul-2024 (Intimation-of-Change-in-Director). This is a breach only if no earlier outcome filing exists, which was not checked.
- **Counter-argument:** small-cap audit fees in India are often low. The opinions are clean, the IFC is clean, and the auditor flagged tax contingencies as a KAM.
- **Verdict:** clean opinions from a small firm on a very small fee. The quality of the notes is weak. This is no basis to allege misstatement, but it argues against taking the accounts at face value.

## 6. Contingent liabilities and tax disputes

| Matter | Rs cr | Status | Source |
|---|---|---|---|
| Income tax AY 2018-19: interest waiver on the OTS (Rs 60.92 cr) added as "undisclosed business income"; order u/s 147 r.w.s. 144B dated 25-Mar-2026; "Penalty proceedings under sections 270A has been initiated for under reporting of income" | **41.76** | Appeal to CIT(A) filed 08-Apr-2026 | ARFY26 p137 Note 43.03; Reg 30 dated 27-Mar-2026 |
| GST: credit on IPO expenses, s.74 order (tax 3.597 + equal penalty) | **7.19** | Appeal "in process" | ARFY26 p137 Note 43.01; Reg 30 dated 08-Apr-2026 |
| GST FY 2019-20: tax on consideration for transfer or assignment of lease rights (43.38 tax + 49.42 interest + 43.38 penalty) | 1.36 | Appeal "in process" | Note 43.02 |
| Panvel Municipal Corporation property tax | 0.72 | Pending | Note 43.04 |
| **Disclosed FY26 total** | **51.04 = 11.4% of net worth (447.3)** | | |
| GST show cause notice: refunds of credit on exports, rule 89(4) and 96(10), FY 2019-20 to 2024-25 | **77.61** | FY25: "Bombay High Court has granted interim stay ... matter is still subjudice." **FY26: not mentioned anywhere** | ARFY25 p153 Note 44.2, p162 CARO; ARFY26 none |
| **Total if the 77.61 cr notice is still live** | **128.65 = 28.8% of net worth** | | |

- **[E] The 77.61 cr GST notice vanished.** It appears in the FY25 notes and the FY25 CARO, and in neither the FY26 notes, the FY26 CARO nor any transcript. No filing on disk records a High Court order quashing it.
  - **[U]** Its current status is unknown.
  - **Counter-argument:** CARO 3(vii)(b) covers "dues ... not deposited on account of dispute". A stayed notice that has not been adjudicated is arguably not a "demand", so the auditor could drop it legitimately. But Ind AS 37 still requires disclosure of a contingent liability unless the outflow is remote. A writ against a refund-recovery notice is not obviously remote.
  - **Action:** ask the company. Search the Bombay High Court cause list for Aeroflex Industries v Union of India.
- **[E/I] The IT reassessment was not disclosed until the order arrived.** An order u/s 147 in Mar-2026 for AY 2018-19 needs a s.148 notice issued earlier, most likely in FY24 or FY25. Yet neither ARFY24 nor ARFY25 mentions pending reassessment proceedings. The MD on the Q4 FY26 call (06-May-2026): "the income tax department reopened this particular assessment year, where the assessment for this particular year was already closed previously ... because of time bar issues, I think they have claimed that it is an undisclosed business income."
  - **[U]** Whether the IPO RHP (Aug-2023) disclosed the reopening.
- **[E] The AR and the Reg 30 filing disagree on the GST order.** The AR says the IPO-credit order is "dated 30.03.2026", for "financial year 2023-24". The Reg 30 filing says it is dated 07-Apr-2026, for "April 2021 to March 2024", under s.74 (the section for fraud, wilful misstatement or suppression).
- **[I] The GST credit on IPO expenses reconciles to the IPO numbers.** Gross offer expenses were 25.99 cr (162.00 minus net proceeds of 136.011). The AR charged 22.39 cr to securities premium (ARFY24 p137). The 3.60 cr difference matches the 3.597 cr GST credit now under dispute. If the credit is disallowed, about 7.2 cr plus interest becomes a cost.
- **Verdict:** a disclosed contingent equal to 11% of net worth, plus an unexplained 77.61 cr disappearance. The IT matter alone is three quarters of a year's PAT.

## 7. Receivables, concentration, ECL

**Ageing from due date, consolidated (Rs lakh)** (ARFY26 p120)

| | < 6 m | 6 m - 1 y | 1-2 y | 2-3 y | > 3 y | Total | Allowance |
|---|---|---|---|---|---|---|---|
| 31-Mar-2025 | 10,422.68 | 820.54 | 362.72 | 30.45 | 15.40 (disputed, NCLT) | 11,651.79 | nil |
| 31-Mar-2026 | 11,633.97 | 345.17 | 823.43 | 207.19 | 29.95 | 13,039.72 | 58.10 |

- **[E] Receivables more than 1 year past due nearly tripled.** They rose from 4.09 cr to 10.61 cr (8.1% of gross). The allowance is 0.58 cr, i.e. 5% of the over-1-year bucket. H1 FY27 standalone then booked a new "Provision for Bad Debts 150.00" lakh (Results_Sep2026 cash flow), and receivables jumped from 129.8 to 203.8 cr by Sep-2026.
- **[E] FEMA-overdue export realisations.** The same note, in substance, recurs every year (ARFY26 p138 Note 44.14): "The Holding company has over due receivables against the export realisation of goods for INR equivalent to 3,921.57 Lakhs (PY: 5,337.13 Lakhs) due to the various business reasons ... the company is in process of availing extension from RBI through its authorized dealers ... however till the date of the balance sheet such extension has not been made."

| | FY24 | FY25 | FY26 |
|---|---|---|---|
| FEMA-overdue export receivables (cr) | 32.35 (ARFY24 p98) | 53.37 | 39.22 |
| % of gross trade receivables | 34% | 46% | 30% |
| Receivables > 6 m past due per ageing (cr) | n/a | 12.29 | 14.06 |

  - **[I] The two numbers do not reconcile on their face.** FEMA expects realisation within 9 months of export. A bill past that point should normally sit beyond 6 months in a past-due ageing, unless credit terms exceed about 3 months. Two explanations fit:
    - (a) **Bank-side reconciliation.** These are EDPMS bills the AD bank has not closed, because of netting, short-realisation or mismatched remittances. In that case some short-realisation write-offs may still be pending.
    - (b) **Generous credit terms.** Long credit terms make "past due" much shorter than "since shipment".
  - Either way, an overdue export book above 30% of receivables for three years, with no RBI extension, is a FEMA compliance exposure under the Master Direction on export of goods. Any compounding or penalty is not provided for. **Do not assert the ageing is misstated.**
- **[E] Concentration is denied in the AR but disclosed on the calls.**
  - ARFY26 p136 (also ARFY25 p152): "The group has no concentration of credit risk as the customer base is widely distributed."
  - MD, Q4 FY26 call (06-May-2026): "our biggest customer in the international market contributes about 25% to 26% of our sales right now."
  - MD, Q2 FY27 call: "we are working with one customer exclusively for India for the liquid cooling business ... this very large U.S. multinational company".
  - Skids were 24% of Q2 FY27 revenue (working-notes item 2). **[I]** On these statements, two customers are about half of Q2 FY27 revenue. Top-1, top-5 and top-10 shares are not disclosed in the AR [absence].
- **ECL policy:** a simplified approach is described (ARFY26 p110). The provision matrix and loss rates are not disclosed.
- **Verdict:** rising aged receivables, an under-provided allowance, a chronic FEMA overdue book and undisclosed concentration. The AR language contradicts management's own statements.

## 8. Inventory, effective tax rate, CWIP

- **Inventory** (ARFY26 p119): RM 38.03 cr, WIP 38.13 cr (+59%), FG 5.07 cr (-52%), spares 2.49 cr, total 83.72 cr (FY25 66.68). The note says: "Stock are Valued at Cost or Net realisable value whichever is Lower & has been certified by the management." No ageing, slow-moving provision or write-down is disclosed in any year. Inventory days are 122 (screener). The CARO physical-verification clause is clean ("not 10% or more"). **Verdict:** no evidence of a problem, but no evidence of testing either.
- **ETR:** FY26 25.64%, FY25 24.06% (ARFY26 p129). This is in line with the 25.168% s.115BAA rate. The FY19-FY20 deferred tax credits (FY20 1.13 cr, FY19 2.11 cr) and the FY21 set-off of brought-forward losses (7.6 cr; Restated Note 33) are historic. **Verdict:** clean.
- **CWIP ageing:** all under 1 year: FY26 23.10 cr, FY25 9.84 cr (ARFY26 p116). By Sep-2026 it was 73.5 cr. The FY26 KAM A text says capitalisation of borrowing cost "from the accumulated funds and the internal accruals" (ARFY26 p85), which is a confused phrase given there is no borrowing. **Verdict:** clean.

## 9. Subsidiaries

| Entity | Relation | Revenue | PAT | Net worth | Note |
|---|---|---|---|---|---|
| Hyd-Air Engineering Pvt Ltd (Chakan, Pune) | 100% from 02/04-Apr-2024 | FY25 10.43; FY26 31.62 | FY25 0.49; FY26 0.24 (PBT 0.11) | FY26 27.27 | Total invested 27.80 cr equity + 5.40 cr loan. PBT of 0.11 cr on 31.6 cr revenue. Amalgamation into Aeroflex u/s 233 (fast track) approved in principle 28-Oct-2026, appointed date 01-Apr-2026 (Outcome_of_BM_28.10.2026) |
| Aeroflex Industries Ltd (UK) | 100%; share capital GBP 20,000 | FY24 Rs 6.33 lakh (0.020% of group) | loss | Rs 7.29 lakh | Closure approved 30-Oct-2024, "expected to be completed within a period of 6 months". Received commission 7.62 / 10.02 lakh (FY24 / FY25) from Aeroflex. Immaterial |
| Italica Global FZC (Ajman) | **NOT an Aeroflex subsidiary**: a wholly owned subsidiary of the parent, and a 5.6% shareholder | FY23 9.01 | FY23 3.82 | FY23 22.52 | See section 4 |

- **[E] No unrealised-profit elimination in FY25.**
  - FY25 consolidated inventory of 6,668.28 = standalone 5,930.36 + Hyd-Air 737.92, exactly (ARFY25 p113, p167; Hyd-Air BS).
  - Aeroflex sold Hyd-Air 6.66 cr in FY25. Hyd-Air's books show 786.21 including 18% GST, so this is not a mismatch. Hyd-Air's inventory rose 6.64 cr.
  - Intra-group receivables were eliminated (standalone receivables 120.95 against consolidated 116.52), but the unrealised profit in stock was not.
  - At a ~20% margin the overstatement is up to about 1.3 cr of FY25 consolidated PBT (~2%) [I]. FY26 consolidated PAT also equals standalone plus Hyd-Air exactly (5,528.22 + 24.48 = 5,552.70), consistent with no unrealised-profit accounting at all.
- **[E] Hyd-Air classes all its creditors as MSE.** FY25 trade payables of 933.97 lakh are all shown as micro and small enterprise dues, although the bulk appear to be owed to Aeroflex, a large company. Its note says there were "delay in payments to Micro, Small and Medium Enterprises for more than 45 days ... for which no provision for interest has been made" (Hyd-Air FY25 p34).
- **[I] Management's stated rationale does not match the FY26 flows.** On the Q2 FY27 call the MD said "a lot of the capacities of Hyd-Air are now being utilized to manufacture products for Aeroflex". FY26 purchases from Hyd-Air were 2.10 cr, against Hyd-Air revenue of 31.62 cr. This may describe FY27.
- **Losses outside consolidation:** none found. Italica is outside the group by structure. The UK subsidiary's losses are immaterial.

## 10. KMP and board changes, FY23-FY27

| Date | Event | Stated reason | Source |
|---|---|---|---|
| 02-May-2022 | Joint statutory auditor S S N & Co resigns | "pre - occupancy in other assignments" | ARFY23 p13 |
| 30-Oct-2024 | Mustafa Kachwala re-appointed CFO for only 2 years from 28-Nov-2024 | - | Intimation-of-Change-in-Management |
| 15-Jan-2025 | Kiran C. Kagalkar (ex-Parker Hannifin GM) appointed COO w.e.f. 01-Feb-2025 | - | Intimation-of-Appointment-of-COO |
| 20-May-2025 | COO resigns w.e.f. 30-Jun-2025, **5 months after joining** | "due to personal reasons" | Intimation_of_Resignation_of_COO |
| 15-Jul-2025 | CS Kinjal Shah resigns (letter dated 14-Jul-2025, relieved the same day) | "to pursue opportunities outside the organization" | Intimation_of_resignation_CS |
| 28-Jul-2025 | Ruthu Parampogi appointed CS | - | ARFY26 p39 |
| 18-Jun-2026 | "Change in management": promotions of 5 staff to Senior Management Personnel (R&D, export sales, procurement, etc.), re-appointment of internal and statutory auditors, a cost auditor, and a grant of 9,500 ESOPs at Rs 180 | promotions | Intimation_of_change_in_Management_18.06.2026 (identical file to Grant_of_ESOP) |
| 28-Oct-2026 | Kachwala's CFO tenure "completed" 27-Nov-2026 (he stays WTD and KMP); Ms Drashti Bhil re-designated CFO from 28-Nov-2026 for 3 years | "Completion of Tenure" | Outcome_of_BM_28.10.2026 |

- **[E] Board.** Seven directors, 4 of them independent. Two independent directors, Parthasarathi Sarkar and Arpit Khandelwal, are also directors of the promoter, Aeroflex Enterprises. Khandelwal was also a director of M.R. Organisation (paid 3.56 cr by Aeroflex in FY25) until 30-Apr-2026 (ARFY26 p60-61). The CG report says no independent director "has any material pecuniary relationship" (p60). This is legal under LODR, but weakens independence in substance [I].
- **[E] Promoter classification.** All directors, including the MD Asad Daud, are classified "Non-Promoter" (ARFY26 p59). The promoter is the listed parent.
- **[I] Turnover in finance and operations.** The COO lasted 5 months, the CS changed in Jul-2025, and the CFO hands over in Nov-2026 in the same quarter as the depreciation change. The new CFO is internal ("re-designated"). The stated reasons are benign, and none is evidence of a dispute.
- **Remuneration:** 2.5% of PAT (section 4). Not excessive.

## 11. Use of proceeds

**IPO (listed 31-Aug-2023).** Rs 351 cr in total: a 162 cr fresh issue and 189 cr of OFS by SAT Industries, at Rs 108.

| Object | Allocation (cr) | Utilised | Source |
|---|---|---|---|
| Repayment of borrowings | 32.00 | 32.00 by Mar-2024 | ARFY24 p137 |
| Working capital | 84.00 | 49.65 by Mar-2024; 84.00 by Jun-2024 | ARFY24 p137; Statement_of_Deviation_2024-25 |
| GCP and unidentified acquisitions | 15.527 revised to 20.011 | 20.011 by Jun-2024 | same |
| Net proceeds | 136.011 | fully used; monitoring agency ICRA; "No Comments" from the audit committee and the auditors | same |

- **[E] The company bore Rs 25.99 cr of IPO expenses**, i.e. 16.0% of the fresh issue. The RHP estimated the "company's share for Offer Expenses of Rs.30.473 crore" (Statement_of_Deviation_December_2023). Of this, 22.39 cr went to securities premium and 3.60 cr was claimed as GST credit, now disputed (section 6).
  - **[U]** At a pro-rata share split, the selling shareholder (1.75 cr shares) would bear more than the company (1.50 cr shares). A company share of 26-30 cr on a 351 cr issue therefore looks high. Confirm the expense split in the RHP before any claim that the company paid the OFS's costs.
- **[I] Fungibility.** The working-capital object was "fully utilised" by Jun-2024. In FY25 the company then spent 103 cr on capex and the acquisition, and cash fell from about 106 cr to 27 cr. The IPO cash effectively funded capex as well; money is fungible.
- **Preferential issue (03-Feb-2026; 54.99 cr):** covered in working-notes item 11. The objects moved from capex (board, 18-Dec-2025) to long-term working capital and GCP (corrigendum, 05-Jan-2026). Advisory fees were 1.416 cr. 12.59 cr was used by 31-Mar-2026 (ARFY26 p78) and the issue was "fully utilized" by 30-Sep-2026 with no deviation. The FY26 cash flow shows 1.79 cr of preferential-issue expenses, against 1.45 cr allocated in the objects.

## 12. Other items a short-seller would use

1. **History of distress, and a loan pledged against promoter-side shares.**
   - The Register of Charges shows the pre-2018 bank consortium (Axis, SBI, BOI, EXIM, Allahabad, UCO) assigned to International Asset Reconstruction Company in 2011-2014.
   - It also shows a 01-Aug-2018 Kotak Mahindra Prime loan of Rs 55 cr at 21% fixed, with a FCTL at LIBOR + 13.50%, secured by "Pledge of 30% share of Aeroflex Industries Ltd owned by Mr. Yusuf Kagzi" (Register_of_Charges p1-2, p5-6).
   - The MD on the Q4 FY26 call: "when we took over this company, which was a stressed company, there was a waiver ... of interest by the banks".
   - **[U]** Who Yusuf Kagzi is, and his relationship to the promoter group.
2. **No external credit rating since 16-Oct-2023.** CRISIL BB was withdrawn on 17-Oct-2022 and Infomerics BBB- on 16-Oct-2023 (facilities surrendered). With no bank limits there is no lender monitoring of stock and debtors. That is an absence of an outside check, not a fault.
3. **Payables are funding growth.** FY26 trade payables rose 23.9 cr (CFO 65.8). By H1 FY27 payables were 136.3 against 80.7. In H1 FY27, CFO of 38.2 compares with PAT of 55.4 and receivables up 74 cr.
4. **Forex and the depreciation switch together.** FY26 PBT excluding forex fell 7%. FY27 reported growth combines the skid ramp (real), the SLM switch (about 17 cr) and forex (unknown, since the Q2 FY27 split is not disclosed). This is the cleanest bear argument on earnings quality.
5. **Single-customer skid business.** It was 24% of Q2 FY27 revenue from one US multinational under an "exclusive for India" arrangement. The MD said: "this particular business is dedicated for one customer" (Q3 FY26 call). The skid margin is "on the same level as the margins on an average" (Q1 FY27 call). That cannot be verified.
6. **Disclosure hygiene.**
   - The Q1 FY25 deck was re-filed as revised.
   - The Q3 FY24 transcript was filed twice.
   - The Q2 FY26 transcript has an analyst asking about a "typo" in the presentation.
   - The preferential-issue corrigendum was itself corrected a day later.
   - Taken together with the note errors in section 5, the pattern points to thin finance-function capacity, not concealment [I].

## Questions to put to management (ranked)
1. What is the status of the Rs 77.61 cr GST show cause notice (rule 89(4) and 96(10)), and why does it not appear in the FY26 AR?
2. What are the FEMA-overdue export receivables of Rs 39.22 cr: EDPMS reconciliation, or real overdue? Which counterparties? Is any of it owed by Italica?
3. What are the Italica Global FZC transfer prices, its end customers, and its FY24-FY26 financials? What was the FY26 "business development service"?
4. What technical evaluation supports the 25-year plant and machinery life and the move to SLM? What is the expected FY27 depreciation on each method?
5. Who is the lessor of the Rs 9.87 cr ROU asset, and why is it labelled "business combination"?
6. How were the 3.56 cr paid to M.R. Organisation in FY25 accounted for (expensed or capitalised)?
7. How was the Rs 25.99 cr of IPO expenses split with the selling shareholder?
8. What are the top-1, top-5 and top-10 customer shares of revenue and receivables?

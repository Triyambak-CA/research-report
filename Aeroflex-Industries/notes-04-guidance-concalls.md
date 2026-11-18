# Aeroflex Industries (NSE AEROFLEX) - Notes 04: guidance scorecard and concall forensics

Prepared 18-Nov-2026. Covers all 13 earnings-call transcripts, Q2FY24 (08-Nov-2023) to Q2FY27 (29-Oct-2026), read against the investor decks, Reg 30 filings, the EOGM notice and corrigendum for the Dec-2025 preferential issue, the Reg 32 deviation statement, the Hyd-Air FY26 accounts and AR FY26. No rating, no price target.

## Conventions

- Citation form: `Q3FY26 p15` means the transcript file `source-docs/calls/Q3FY26-transcript.txt`, printed page 15 (the transcript's own "Page X of N" numbering). Every quote below was checked as an exact substring of the transcript by script after whitespace normalisation, and its page taken from the page footer that follows it.
- Quotes are verbatim except: curly quotes made straight, en and em dashes in the transcripts replaced by hyphens, the rupee sign written as "Rs". The transcripts themselves write "INR"; that is kept inside quotes.
- Speaker is the MD, Asad Daud, unless stated. Analyst words are marked as such.
- Status labels: **ESTABLISHED** (the document says it), **INFERRED** (my arithmetic or reading, mechanism stated), **UNVERIFIED** (could matter, not confirmed in the record I hold).
- Deck figures are from `source-docs/calls/<Qtr>-deck.txt`. Company filings from `source-docs/company/`. Amounts in Rs crore unless stated.
- Correction to working-notes.md: the preferential objects did NOT shift from capex to working capital at the 05-Jan-2026 corrigendum. The EOGM notice dated 18-Dec-2025 already listed "Long-term working capital 4,152.50" and "General Corporate Purpose 1,202.50" (Rs lakh). The contradiction is same-day: the board outcome's Annexure A (18-Dec-2025) funds capex with the preferential; the notice issued the same day funds working capital and GCP. See finding F1.

## Ranked findings (most material first)

### F1. The preferential money was sold as capex funding and legally earmarked for working capital, on the same day

- **ESTABLISHED.** Board outcome, 18-Dec-2025, Annexure A (`Capacity_Expansion_18.12.2025.txt`): skid capacity 2,000 to 15,000 plus robotic welding and annealing, "Total Investment required Rs. 97.56 Crores", "Mode of financing a) Internal accruals - INR 42.56 Cr. b) Preferential issue - INR 55.00 Cr."
- **ESTABLISHED.** EOGM notice dated 18.12.2025 (`Notice-of-EOGM-15.01.2026.txt`), objects: "Long-term working capital 4,152.50", "General Corporate Purpose 1,202.50", "Preferential Issue Expense 145.00" (Rs lakh). No capex object. The corrigendum of 05-Jan-2026 restated the same objects to the paisa and split the expense line into "Advisory Fees 1,41,60,000.00" and meetings Rs 3,40,000.
- **ESTABLISHED.** On the call, an analyst said "we have raised the money to fund our capex" and the MD did not correct him; he answered "the overall capex, including working capital and all that we have planned is around INR97 crores" (Q3FY26 p9).
- **ESTABLISHED.** Reg 32 statement for the quarter to 30-Sep-2026 (`calls/Q2FY27-pref-issue-deviation.txt`) measures use only against working capital (Rs 41.52 cr), GCP (Rs 12.02 cr) and issue expenses, reports "No Deviation/Variation", "Monitoring Agency Not Applicable", and "The company has fully utilized its proceeds as on 30th September 2026."
- **Mechanism.** Shareholders voted on objects that do not mention capex, while the exchange disclosure and the call told the market the money funds capex. Because the legal objects are working capital and GCP, use on capex cannot be tested, and a "no deviation" certificate is automatic either way. Advisory fees of Rs 1.42 cr are 2.6% of a Rs 55 cr placement to six named investors; the advisor is not named in the documents I hold (UNVERIFIED who).
- **Counter-argument.** Money is fungible: if Rs 41.5 cr of working capital is funded by the issue, internal accruals are freed for capex, and the MD's Rs 97 cr figure did say "including working capital". ICDR practice often steers small issuers away from capex objects that would need detailed project disclosures. The issue is below Rs 100 cr, so no monitoring agency was required in any case. This is a disclosure-consistency failure, not evidence of misuse.

### F2. Roughly half of revenue now rests on two customers, while the audited notes say the customer base is "widely distributed"

- **ESTABLISHED, skid side.** "this particular business is dedicated for one customer" (Q3FY26 p10). "we are dealing with one specific or only one particular supplier due to disclosure agreements" (Q4FY26 p5; "supplier" is his word for the customer). "working with one customer exclusively for India" (Q2FY27 p6). International skid prospect: "Same customer." (Q2FY27 p9). Skid sales Rs 50.03 cr of Rs 207.36 cr revenue in Q2FY27 (24.1%) and Rs 82.42 cr of Rs 352.74 cr in H1FY27 (23.4%), per the Q2FY27 deck skid table.
- **ESTABLISHED, hose side.** "our biggest customer in the international market contributes about 25% to 26% of our sales right now" (Q4FY26 p11, 06-May-2026).
- **INFERRED.** If that hose customer is 25-26% of total sales, two customers are about 49% of H1FY27 revenue; if it is 25-26% of the non-skid business only, about 43%. The two numbers come from different periods, so treat 43-49% as a range, not a figure.
- **ESTABLISHED, audited side.** AR FY26 financial-risk note: "The group has no concentration of credit risk as the customer base is widely distributed." The segment note (Note 42 standalone, Note 43 consolidated, read in full) says only that the company "operates in a single segment therefore segment-wise reporting is not applicable". I found no disclosure of revenue from any single customer of 10% or more anywhere in AR FY26 by text search.
- **Mechanism.** Ind AS 108 para 34 requires entity-wide disclosure of reliance on any customer providing 10% or more of revenue, and that applies to single-segment entities too. On the MD's own number, the largest hose customer was above 10% in FY26 on either reading (25-26% of total, or about 17-18% of total if he meant 25-26% of exports at 69% export share). The omission and the "widely distributed" sentence both understate a risk the MD states openly on calls.
- **Counter-argument.** Credit-risk concentration is not the same as revenue concentration; a large, well-paying customer can be low credit risk, and receivable days fell (see Part 3). The major-customer disclosure might sit in a part of the AR my text search missed (the PDF text has OCR noise); confirm against the PDF before publishing. The skid customer only became large after 31-Mar-2026, so the FY26 accounts are not wrong about skids.

### F3. The partner's demand forecast was in the board's hands when the preferential was priced; its size reached the public record only after pricing

Full dated ledger in Part 2. Summary:

- **ESTABLISHED, public before pricing.** 29-Oct-2025: two orders of about Rs 16 cr, "they have asked us to ramp up the capacity" and "in the next month or so, we'll be able to give more details on further expansion" (Q2FY26 p8, p14). 18-Dec-2025: one board meeting, 5:00 pm to 5:55 pm, approved both the skid capacity jump from 2,000 to 15,000 (existing utilisation "Under trial production") and the preferential at Rs 182.70. The relevant date for pricing was 16-Dec-2025. The outcome was signed at 19:50 that evening, after market hours.
- **ESTABLISHED, first said after pricing.** 29-Jan-2026: "we have a pipeline of about INR45 crores that we already have, which is planned for dispatches as per the schedule given by our partner" (Q3FY26 p15); "we are actually doing the capex based on the demand forecast that has been given by our partner" (Q3FY26 p16); Rs 300-350 cr peak revenue at about Rs 3 lakh a skid and 80% utilisation (Q3FY26 p4). 28-Jul-2026: "The capacity increase that we have planned from 2,000 to 15,000 was based on the detailed discussion that we had with our customers. And based on their projections at that time" (Q1FY27 p8).
- **INFERRED.** The 15,000-unit plan was sized on customer projections that existed by 18-Dec-2025. Those projections, and any pipeline value, were not in the board outcome, the EOGM notice or the corrigendum. The Rs 300-350 cr peak figure first appears in the record as an analyst's paraphrase, "you said you can do INR300 crores to INR350 crores of revenue at peak utilization, this is my understanding" (Q3FY26 p4); I could not find where it was said before (not in the Q3FY26 deck, the Dec-2025 filings or a web search).
- **UNVERIFIED.** What the six allottees were told before they committed; whether the Rs 45 cr pipeline existed on 16 or 18-Dec-2025. Nothing in the record says either way.
- **Answer to "was the skid ramp visible to insiders when the preferential was priced?"** The direction was visible to everyone (public since 29-Oct-2025). The scale, in the form of the partner's forecast that sized a Rs 97.56 cr capex, was by the company's own later account in the board's hands at pricing, and was quantified publicly only on 29-Jan-2026, after pricing and before allotment on 03-Feb-2026. After allotment, skid sales were Rs 101.4 cr over three quarters.
- **Counter-argument.** The ramp request and the capex were public the evening of pricing, and the price formula looks back to trading before 16-Dec-2025, so neither side could time the announcement against the price. The notice says Rs 182.70 is "higher than the calculated price in accordance with the Regulation 164" (the floor value itself is not stated in the extract I read). The allottees are non-promoters and their shares are locked in. Do not describe the allottees as insiders; nothing in the record supports it.

### F4. Q2FY27 profit growth of 157% leans on a depreciation switch that books six months of saving in one quarter; nobody asked

- **ESTABLISHED.** "we changed our depreciation method from the WDV, which is the written down value method to the straight-line method effective from 1st April 2026 ... This change resulted in a reduction in depreciation expense of INR8.41 crores, both for Q2 and for H1" and it "was undertaken based on the advice of technical experts" (Q2FY27 p5). The PAT growth headline, "The profit after tax stood at INR36.56 crores", "a growth of 157%", was read out before the depreciation change was mentioned (Q2FY27 p5). Q2FY27 deck: depreciation Rs 0.45 cr in Q2 against Rs 7.84 cr in Q1 and Rs 6.10 cr in Q2FY26.
- **INFERRED, arithmetic.** On WDV, Q2 PBT would be 49.61 - 8.41 = Rs 41.20 cr; at the Q2 tax rate of 26.3% (13.05 / 49.61), PAT about Rs 30.4 cr, growth about 113% instead of 157%. Separately, Q2 alone carries the H1 catch-up: SLM for H1 is Rs 8.29 cr, so a normal SLM quarter is about Rs 4.1 cr, not Rs 0.45 cr. Q2 PBT is about Rs 3.7 cr higher than a clean SLM quarter would show.
- **ESTABLISHED, metric selection.** The MD cited "cash PAT" or "cash profit" in his opening remarks on Q2FY26, Q3FY26, Q4FY26 and Q1FY27, the four quarters when PAT growth lagged EBITDA because of rising WDV depreciation (FY26 PAT +5.75%, cash profit +27.95%). He did not cite it on Q2FY27, when cash profit margin fell 49 bps year on year (17.82% vs 18.31%, Q2FY27 deck) and PAT growth was the better number. No call before Q2FY26 used the metric.
- **No analyst asked** about the depreciation change on the Q2FY27 call (all 10 questioners checked).
- **Counter-argument.** Ind AS 34 measures interim results year to date, so booking the H1 effect in Q2 is the standard treatment, and the deck footnote and the MD both disclosed the Rs 8.41 cr. EBITDA, which is what management guides on, is untouched. SLM is common among peers, and a capex-heavy year makes the WDV front-loading larger. The point is presentation, not compliance.

### F5. FY26 profit guidance was missed by a wide margin and then described as met

- **ESTABLISHED.** 02-May-2025: EBITDA growth "close to 25%, with at least a 100 basis point increase in the margin" and "on the bottom line, we expect at least 20% to 25% minimum growth for the next financial year -- sorry, for the current financial year" (Q4FY25 p6). Asked whether FY26 would repeat 18% top line and 25% bottom line: "Yes, definitely. Definitely." (Q4FY25 p9).
- **ESTABLISHED.** FY26 PAT Rs 55.53 cr against Rs 52.51 cr, +5.75%; PAT margin down 134 bps (Q4FY26 deck). On 06-May-2026: "we have been able to achieve the targets that we had set out at the start of the financial year" (Q4FY26 p4).
- **ESTABLISHED, the walk-back nobody flagged later.** On 29-Jul-2025 an analyst recalled "20% to 25% PAT growth"; the MD answered only on EBITDA ("we had given a guidance of the EBITDA growth of 25%") and cut it to "more than 20%", adding "PAT growth will be slightly lower because we have higher depreciation" (Q1FY26 p5).
- **Counter-argument.** "Bottom line" may have been loose speech for EBITDA, which grew 26.2% on the new definition. The depreciation warning came early, in Q1FY26. Still, "at least 20% to 25%" on the bottom line was never withdrawn in those words, and +5.75% is a miss on any reading of "bottom line" as profit.

### F6. Bellows: every revenue promise missed by 70% to 90%; miniature bellows scope cut by 79%

- **ESTABLISHED.** "with 1.2 lakh pieces we will be able to generate close to 50 crores of sales" in FY26 (Q3FY24 p10). Rs 85-95 cr at full Phase 1 capacity "in the next, I think, 1 years, 1.5 years" (Q1FY25 p16, 05-Aug-2024), later "in the next year and a half or two" (Q2FY25 p7). Bellows profitable "starting from the next quarter which is Q1 of FY '26" (Q3FY25 p6).
- **ESTABLISHED, actual.** "we did about INR8 crores of business from the metal" bellows in FY26 (Q4FY26 p5); Rs 6 cr in Q2FY27 (Q2FY27 p10), an annualised Rs 24 cr. Miniature bellows: 240,000 pieces by Mar-2026 (Q3FY25 p3) cut to about 50,000 and capex from Rs 23 cr to Rs 10.5 cr (Q3FY26 p2).
- **UNVERIFIED.** Whether bellows reached break-even in Q1FY26 or since. The bellows loss was asked for on 02-May-2025 ("I can get back to you", Q4FY25 p13) and has never been given on a call.
- **Counter-argument.** Some bellows-plant machinery and orders were redirected to liquid-cooling components (Q2FY26 p4; the 16-Oct-2025 order filing books the data-centre order to the "Bellow Division"), so the bellows asset is earning, just under another label. That rescues the capex, not the guidance.

### F7. The skid agreement is described five different ways

- **ESTABLISHED.**
  1. Reg 30 filing, 16-Oct-2025 (`Update_on_receipt_of_new_order_for_the_Aeroflex_Bellow_Division.txt`): the Rs 7.8 cr order is "under the existing global agreement" for "the subsidiary of U.S. based corporation".
  2. "we have signed an agreement with them for exclusivity for the next 5 years. This is for just the India market. It does not include the overseas market" and "It's a normal buyer-seller transaction" (Q3FY26 p4).
  3. "with regards to technology, with regards to supply, with regards to everything. So we have an exclusive contract with them for skid assemblies" (Q4FY26 p6).
  4. Design: "the design of the skid assemblies that we have developed jointly with our partners" (Q3FY26 p19) against "the design which was initially to be provided by the principal is actually now being done by our entire team" (Q4FY26 p9), and later "the design team of Vertiv works in close connection with our design team" (Q2FY27 p13).
  5. International supply: "the discussion with our customers for international supply started about a couple of months back" (Q2FY27 p10, 29-Oct-2026), a year after the filing called the agreement "global".
- **Mechanism.** The exchange filing's "global agreement" implied a wider franchise than the India-only, five-year, buyer-seller contract described on calls. A reader of the filing alone would overstate the moat. The design statements matter because the Q4FY26 shortfall against the Rs 45 cr pipeline was blamed on design work shifting from the principal to Aeroflex.
- **Counter-argument.** "Global agreement" may be the customer's standard global vendor master agreement under which India purchase orders are placed; that reading reconciles items 1 and 2. Design work naturally moves from principal-led to joint as a supplier matures.

### F8. Management offers non-public detail privately, and one price concession surfaced only through an analyst

- **ESTABLISHED.** On the Q2 skid delivery schedule: "Q2 delivery schedule we have, but I will not be able to share it right now. Probably we can take it on a one-to-one basis." (Q1FY27 p12). On group companies: "we can discuss it offline" (Q4FY26 p15). On how much hose is sold as assemblies: "post the call, we'll probably share with you offline" (Q4FY25 p12).
- **ESTABLISHED.** On 29-Oct-2025 the tariff cost was "majority ... borne by the customers themselves, with a small rebate that we have given" (Q2FY26 p12). On 29-Jan-2026 an analyst said "we took a price hit of 8%" and the MD answered "Yes. So what happened is when we gave a discount to our customers" (Q3FY26 p17). The 8% figure appears in no earlier transcript or deck I hold.
- **INFERRED.** An offer to share a forward delivery schedule one-to-one, from a company where one customer is about a quarter of revenue, is a selective-disclosure risk under the LODR principle of equal access. An 8% concession is not "a small rebate" on a business with a 22-23% EBITDA margin.
- **UNVERIFIED.** Whether any one-to-one disclosure actually took place, and where the analyst's 8% came from (his own estimate, an earlier meeting, or a media interview are all possible).
- **Counter-argument.** Many Indian small-cap MDs use "offline" to mean "send the IR team an email" for granular data, and the Q2 schedule may have been offered as a general description rather than numbers.

### F9. Rs 48.95 cr of tax demands sit outside the headline numbers; the income-tax one is about three-quarters of FY26 PAT

- **ESTABLISHED.** Income-tax demand of Rs 41,75,88,940 for AY 2018-19, raised by order dated 25-Mar-2026 on reassessment, on the waiver of interest in a bank one-time settlement (`Intimation_under_Regulation_30_dated_27.03.2026..txt`; AR FY26 contingent liabilities, Rs 4,175.89 lakh). GST demand under section 74 of Rs 3.60 cr plus an equal penalty, about Rs 7.19 cr, on input tax credit claimed on IPO expenses (`Intimation_under_Regulation_30_dated_08.04.2026..txt`; AR FY26 Note 43/44, Rs 359.47 lakh each).
- **ESTABLISHED.** On the call the MD said the waiver "was clearly disclosed both in financial statements and also in the income tax return" and "as per our advisers and our lawyers, we are extremely confident" of reversal on appeal (Q4FY26 p13). Only one analyst raised it, on one call.
- **INFERRED.** Rs 41.76 cr is 75% of FY26 PAT of Rs 55.53 cr. The GST point (input tax credit on IPO expenses) is a recurring area of dispute and the outcome is genuinely uncertain.
- **Counter-argument.** Reopened assessments where the item was disclosed in the return often fail on appeal, and bank interest that was never allowed as a deduction (section 43B defers it until paid) is arguably outside section 41(1) when waived. The MD may be right; the exposure still belongs in any valuation as a contingent item.

### F10. Definitions moved, each time in the direction that flatters

- **ESTABLISHED.** EBITDA definition: from the Q4FY26 deck, "EBITDA and EBITDA margin are calculated based on revenue from operations", which removes other income and restates FY25 EBITDA from Rs 81.58 cr to Rs 79.05 cr. FY26 growth shows as 26.18% and +156 bps. Like for like on the old definition: (99.74 + 1.36) / 81.58 = +23.9%, margin 22.81% vs 21.54% = +127 bps (INFERRED arithmetic). Both clear the guidance, so the switch did not change a verdict, but it widened the beat.
- **ESTABLISHED.** "Assemblies" share: about 33% of sales "right now" (Q4FY24 p20); 9M FY25 "increased to 49% which enabled us to reach our target almost a year ahead of schedule" (Q3FY25 p2); by Q3FY26 the value-added bucket "includes the assemblies, fittings, bellows and skid assemblies" (Q3FY26 p3). The 60-70% assemblies target of Q4FY24 is now being measured on a bucket that includes the new skid business.
- **ESTABLISHED.** The 25% margin target: "over the next four to five years, our EBITDA margins should come to about 25-odd percent" (Q4FY24 p18); "by FY '27, we should be in the range of 24% to 25% EBITDA margins on a conservative level" (Q3FY25 p10); FY27 target "around 23%" (Q4FY26 p16); and when an analyst asked about the hose business reaching 25%: "our idea is to achieve a 25% blended margin combined as a whole" (Q1FY27 p4).
- **ESTABLISHED, retroactive target.** "last year we had set out a target of increasing our EBITDA margin by approximately 100 basis points every year" (Q3FY25 p10). I found no such statement on the Q2FY24, Q3FY24, Q4FY24, Q1FY25 or Q2FY25 calls. The closest is "our aim would be to increase our margins on a QoQ basis" (Q3FY24 p8). Not found in the record; it may have been said in a deck or interview I do not hold.

### F11. Hyd-Air: funding story changed, the growth thesis was dropped, and the merger benefit claimed is out of scale

- **ESTABLISHED.** Acquisition (Rs 17.20 cr) "entirely funded by internal accruals" (Q4FY24 p3, 07-May-2024) against "mix of internal accruals and IPO proceeds" (Q1FY25 p3, 05-Aug-2024).
- **ESTABLISHED.** The thesis was third-party growth: Rs 30-35 cr by FY26, "Those will be like third party sales" (Q2FY25 p8, p9); Rs 40-50 cr "over the next couple of years" (Q3FY25 p15). By 06-May-2026 the aim was "to utilize the capacity of Hyd-Air for internal consumption" (Q4FY26 p5), and by 29-Oct-2026 it was being merged because "a lot of the capacities of Hyd-Air are now being utilized to manufacture products for Aeroflex Industries" (Q2FY27 p8).
- **ESTABLISHED.** Hyd-Air FY26 standalone total income Rs 31.64 cr (Q4FY26 p5; Hyd-Air FY26 accounts, Rs 3,164.57 lakh). The related-party note in those accounts names the holding company and KMP but I found no table of sales to Aeroflex (the scan is OCR-damaged), so the third-party share is not verifiable.
- **INFERRED.** Merger benefit: "we expect at least a couple of percentage margins to increase just on account of the cost" (Q2FY27 p6). Two points of FY27 guided revenue of Rs 715-725 cr is about Rs 14-15 cr a year, against a subsidiary with about Rs 32 cr of revenue and FY26 PAT of roughly Rs 0.25 cr (EPS Rs 518.12 on 4,724 shares). Admin and compliance savings from folding in a wholly owned subsidiary cannot be that large; either he meant something else (for example Hyd-Air's own margin) or the claim is unsupported. The MD declined to quantify when pressed (Q2FY27 p6).
- **Counter-argument.** Captive use of Hyd-Air capacity for skid fittings may be the better economic choice, and a merger does remove intercompany pricing and duplicate compliance. The criticism is that each step was presented as the plan all along.

### F12. "Debt free, no debt planned" became "bridge loan financing" in nine months; "QIP only for acquisitions" became a preferential for working capital

- **ESTABLISHED.** "Zero. We're debt free." (Q3FY25 p11). QIP of Rs 400 cr: "most of the proceeds of the QIP will be used for inorganic acquisitions" (Q4FY25 p4); "the QIP will only be done once the acquisition opportunity" is final (Q1FY26 p11); US acquisition "very soon" (Q4FY25 p16). 29-Jan-2026: "There is no debt -- we have not taken any debt" (Q3FY26 p9) and "we don't plan to take on any debt" (Q3FY26 p10). 29-Oct-2026: the Rs 202 cr capex "will be funded primarily through a combination of internal accruals, bridge loan financing and equity fund raise if required" (Q2FY27 p4).
- **ESTABLISHED.** Cash at 31-Dec-2025 "approximately about INR20 crores" (Q3FY26 p9). No acquisition has been announced; the only equity raised was the Rs 55 cr preferential (F1).
- **Counter-argument.** The Rs 202 cr plan is new and twice the size of anything earlier; receivables rose Rs 74 cr in six months on 81% growth. Changing the funding plan when the plan changes is reasonable. The issue is that "we don't plan to take on any debt" was said nine months earlier as a firm statement.

### F13. The COO left after about five months and the exit was never mentioned on a call

- **ESTABLISHED.** Kiran Kagalkar was introduced on the 16-Jan-2025 call as COO "with effect from 1st of February 2025" with "more than 37 years of experience" (Q3FY25 p3). Resignation intimated 20-May-2025, effective 30-Jun-2025, "due to personal reasons" (`Intimation_of_Resignation_of_Chief_Operating_Officer_w.e.f._30062025.txt`). The Company Secretary also changed in Jul-2025. AR FY26's KMP list says the COO "Resigned with effect from May 20, 2025", which conflicts with the 30-Jun-2025 effective date in the filing.
- **ESTABLISHED.** Across the five calls after the resignation (Q1FY26 to Q2FY27), neither management nor any analyst mentioned the COO. The CFO and Whole-time Director, Mustafa Kachwala, has not spoken on any of the 13 calls; every answer on every call is the MD's, apart from one line on inventory days from Harshit Savla (Q2FY24 p10).
- **Counter-argument.** A short COO tenure in a promoter-run small cap is often a fit issue, not a governance one, and the filing was timely. The silence is still worth noting in a business whose execution, design and quality bottlenecks (Q4FY26 p9) are now operational rather than commercial.

---

## Part 1. Guidance versus delivery

### Scoring rules (set before scoring)

1. One row per distinct commitment (metric plus deadline). Restatements of the same commitment sit in the same row.
2. A moved deadline is a miss on the original deadline, plus a new pending row for the restated one.
3. Resolvable means the deadline fell on or before 30-Sep-2026 (the last reported period) and a deck, filing or later call gives the actual.
4. Hit: an amount within 5% of a point target or inside a stated range; a date met within one calendar month. Overachieved: above the top of a stated range. Partial: part delivered, or up to one quarter late. Miss: anything worse.
5. Ratio = (hits + overachieved) / resolvable rows. Partial rows count in the denominator only.
6. Not verifiable (actual undisclosed) and exogenous forecasts (tariff policy) are listed but kept out of the ratio.
7. Segment tags, fixed before scoring: **C** = core hose, assemblies and group-level financials (the group was more than 95% core until FY26); **S** = liquid-cooling skids; **B** = bellows and Hyd-Air; **R** = robotics and automation.

### Resolvable rows

| ID | Seg | Date said | Quote (cite) | Metric | Target | Deadline | Actual (source) | Verdict | Magnitude |
|---|---|---|---|---|---|---|---|---|---|
| C1 | C | 08-Nov-2023 | "anywhere between 30% to 40% range" (Q2FY24 p7) | FY24 growth | 30-40% | FY24 | Revenue Rs 317.91 cr vs Rs 269.46 cr, +18.0% (Q4FY24 deck) | Miss | -12 to -22 pp |
| C2 | C | 08-Nov-2023 | "our aim is to reduce the working capital cycle over the next few quarters" (Q2FY24 p8) | Receivable days | Lower | About Sep-2024 | About 91 days (Mar-23), 109 (Mar-24), 114 (Sep-24), 113 (Mar-25), deck balance sheets | Miss | +22 days |
| C3 | C | 08-Nov-2023 | "in the next year, definitely, I think it would be less than 50%" (Q2FY24 p10), on imported coil | Imported coil share | Below 50% | FY25 | "we are still predominantly importing the stainless" steel coil, "Most of it is from China" (Q3FY25 p15). Share never disclosed | Miss (on management's own words) | Not quantifiable |
| C4 | C | 29-Jan-2024 | 13.5 mn m "expected to be completed by March 2024" (Q3FY24 p3) | Hose capacity | 13.5 mn m | Mar-2024 | 13.5 mn m in FY24 (Q4FY25 deck) | Hit | On time |
| C5 | C | 29-Jan-2024 | "by June 2024, we expect to add three more lines of composite hoses" (Q3FY24 p3); restated "should be completed by Q2 of FY25" (Q4FY24 p3) | Composite lines | +3 lines | Jun-2024 | "completed in Dec-24" (Q3FY25 deck) | Miss | 6 months late |
| C6 | C | 07-May-2024 | 16.5 mn m by "December of this year" (Q4FY24 p3) | Hose capacity | 16.5 mn m | Dec-2024 | 16.5 mn m at Dec-24 (Q3FY25 deck) | Hit | On time |
| C7 | C | 07-May-2024 | Analyst: "in one year, we'll be at least looking forward to be 45". MD: "Yes, minimum." (Q4FY24 p19) | Assembly stations | At least 45 | May-2025 | 40 at Mar-25 (Q4FY25 deck) | Miss | -11% |
| C8 | C | 07-May-2024 | "We anticipate an EBITDA growth of 25% + for the upcoming years" (Q4FY24 deck); "we expect about 25% growth in the EBITDA numbers in this financial year" (Q2FY25 p14) | FY25 EBITDA growth | 25% | FY25 | +24.26% (Q4FY25 deck) | Hit | -0.7 pp |
| C9 | C | 07-May-2024 | margins "should be definitely much higher in the current FY" (Q4FY24 p18) | FY25 EBITDA margin | Up | FY25 | 21.54%, +113 bps (Q4FY25 deck) | Hit | +113 bps |
| C10 | C | 07-May-2024 | "export will continue to contribute at least 80% to our overall sales" for 3-4 years (Q4FY24 p10) | Export share | At least 80% | FY25 onward | 74% FY25, 69% FY26 (Q4FY26 deck) | Miss | -6 to -11 pp; benign, domestic grew faster |
| C11 | C | 05-Nov-2024 | Rs 500 cr a year: "over the next year or so, we will be aiming to reach this target" (Q2FY25 p5) | Annual top line | Rs 500 cr | About Nov-2025 (FY26) | FY26 total income Rs 443.29 cr, all businesses (Q4FY26 deck) | Miss | -11% |
| C12 | C | 16-Jan-2025 | stations "from 40 currently to about 70 within the next 1 year" (Q3FY25 p3) | Assembly stations | 70 | Jan-2026 | 46 (Q3FY26 p3; unchanged to Sep-2026) | Miss | -34% |
| C13 | C | 16-Jan-2025 | 20 mn m "projected to be completed again by March 2026" (Q3FY25 p3) | Hose capacity | 20 mn m | Mar-2026 | 17.5 mn m in Jan-2026, balance "by Q2 of the next financial year" (Q3FY26 p2), then by Q3FY27 | Miss | 2 quarters or more late |
| C14 | C | 02-May-2025 | EBITDA growth "close to 25%" (Q4FY25 p6); cut to "more than 20%" (Q1FY26 p5) | FY26 EBITDA growth | About 25% | FY26 | +26.18% new definition; +23.9% old definition (Q4FY26 deck; F10) | Hit | +1.2 / -1.1 pp |
| C15 | C | 02-May-2025 | "at least a 100 basis point increase in the margin" (Q4FY25 p6) | FY26 margin change | +100 bps | FY26 | +156 bps new definition; +127 bps old | Hit | +27 to +56 bps over |
| C16 | C | 02-May-2025 | "on the bottom line, we expect at least 20% to 25% minimum growth" (Q4FY25 p6) | FY26 PAT growth | 20-25% | FY26 | +5.75%, Rs 55.53 cr vs Rs 52.51 cr (Q4FY26 deck) | Miss | -14 to -19 pp |
| C17 | C | 02-May-2025 | Asked whether 18% top-line growth repeats: "Yes, definitely. Definitely." (Q4FY25 p9) | FY26 revenue growth | About 18% | FY26 | +17.5% revenue, +17.0% total income | Hit | -0.5 pp |
| C18 | C | 02-May-2025 | "there might be like short-term pain with regards to maybe a month or so" (Q4FY25 p9) | Tariff disruption | One month or so | About Jun-2025 | Q1FY26 revenue -6.0% YoY (Q1FY26 deck); Rs 5-6 cr deferred Q2 to Q3 (Q2FY26 p13); 8% price concession by Q3FY26 (Q3FY26 p17) | Miss | Disruption ran 3 quarters |
| C19 | C | 02-May-2025 | US acquisition: "we are hoping that very soon, we'll be able to close" (Q4FY25 p16) | Acquisition | Closed | "very soon" (allowed 12 months) | None by 29-Oct-2026 ("already working on certain potential acquisitions", Q2FY27 p14) | Miss | 18 months, nothing |
| C20 | C | 29-Jul-2025 | "21% to 22% on an annual basis" (Q1FY26 p11); "within the range of 21% to 22% in the coming quarters" (Q2FY26 p3) | FY26 EBITDA margin | 21-22% | FY26 | 22.57% (Q4FY26 deck) | Overachieved | +57 bps above top |

| S1 | S | 29-Jul-2025 | First order "about INR7.8 crores" (Q1FY26 p3), "executed mostly in H2" (Q1FY26 p4); contribution "from Q3 onwards" (Q2FY26 p3); orders "approximately INR16 crores already" (Q2FY26 p14) | H2FY26 liquid-cooling sales | About Rs 16 cr from Q3 | Q3-Q4 FY26 | Skids Rs 2.29 cr (Q3) + Rs 18.94 cr (Q4) = Rs 21.23 cr (Q2FY27 deck) | Hit | +33% |
| S2 | S | 29-Oct-2025 | "in the next month or so, we'll be able to give more details on further expansion" (Q2FY26 p8) | Capex announcement | Details | About end-Nov-2025 | Board outcome 18-Dec-2025, Rs 97.56 cr | Hit | About 3 weeks late, within tolerance |
| S3 | S | 18-Dec-2025 | Proposed capacity addition 13,000, "June 2026" (board outcome); "expanding our skid assembly capacity to 15,000 units per annum ... by June 2026" (Q3FY26 p2) | Skid capacity | 15,000 a year | Jun-2026 | 6,000 (Apr-2026), 9,000 (Jul-2026), 12,000 commissioned and 15,000 "expected to be completed by December 2026" (Q2FY27 p3) | Miss | About 6 months late |
| S4 | S | 29-Jan-2026 | "we have a pipeline of about INR45 crores that we already have, which is planned for dispatches as per the schedule given by our partner" (Q3FY26 p15) | Near-term dispatch | Rs 45 cr | "immediate", read as Q4FY26 | Rs 18.94 cr in Q4FY26; cumulative Rs 51.33 cr only by end-Q1FY27 (Q2FY27 deck). MD cited design and end-customer audits (Q4FY26 p9) | Partial | About one quarter late |
| S5 | S | 29-Jan-2026 | "Maybe 6 months down the line, we may start with exports" (Q3FY26 p15) | Skid exports | Start | About Jul-2026 | None. International talks "started about a couple of months back" (Q2FY27 p10) | Miss | Soft wording; not started |
| B1 | B | 29-Jan-2024 | "Bellows project is expected to be completed by December 2024" (Q3FY24 p3); commercial production "from December" (Q1FY25 p4) | Bellows Phase 1 start | Production | Dec-2024 | "the first production started in the month of January" 2025 (Q4FY25 p13) | Hit | About 1 month |
| B2 | B | 29-Jan-2024 | "with 1.2 lakh pieces we will be able to generate close to 50 crores of sales" in FY26 (Q3FY24 p10) | FY26 bellows sales | About Rs 50 cr | FY26 | About Rs 8 cr (Q4FY26 p5) | Miss | -84% |
| B3 | B | 05-Aug-2024 | Rs 85-95 cr at full Phase 1 capacity "in the next, I think, 1 years, 1.5 years" (Q1FY25 p16) | Bellows annual sales | Rs 85-95 cr | Feb-2026 | FY26 about Rs 8 cr; Q2FY27 Rs 6 cr, annualised Rs 24 cr (Q2FY27 p10) | Miss | -91% at deadline |
| B6 | B | 29-Jul-2025 | Bellows plus Hyd-Air "should contribute at least 15% to the -- 10% to 15% to the overall sales on a yearly basis" (Q1FY26 p5); with liquid cooling "at least 10% to 20% of our revenue" (Q1FY26 p8) | FY26 share of sales | 10-15% (10-20% with skids) | FY26 | Bellows Rs 8 cr + Hyd-Air Rs 31.64 cr = 9.0% of Rs 441.94 cr, before intercompany elimination; 13.8% with skids | Partial | Misses first reading, meets second |
| B7 | B | 16-Jan-2025 | Miniature bellows capacity "is projected to be 240,000 pieces" by "March of 2026" (Q3FY25 p3) | Capacity | 240,000 pcs | Mar-2026 | Cut to about 50,000 pcs, capex Rs 23 cr to Rs 10.5 cr (Q3FY26 p2) | Miss | -79% scope |
| B8 | B | 29-Jan-2026 | Hyd-Air capacity increase: "The same is poised to be announced very soon" (Q3FY26 p5) | Announcement | Capacity plan | "very soon" (allowed 6 months) | None; Hyd-Air redirected to internal use (Q4FY26 p5), then merged (Q2FY27 p2) | Miss | Plan replaced |
| R1 | R | 08-Nov-2023 | Robotic welding: "awaiting the first machine" (Q2FY24 p12); "expected to be received by December" 2024 (Q2FY25 p6) | First robotic lines | In operation | Dec-2024 | "commissioned 2 robotic welding lines" announced 06-May-2026 (Q4FY26 p3) | Miss | About 16 months late |

**Read with C20:** the 21-22% FY26 band (29-Jul-2025) was itself a walk-down from "at least a 100 basis point increase" on FY25's 21.54% (02-May-2025), which implied at least 22.5%. FY26 cleared both, so the verdicts stand, but the overachievement is against a lowered bar.

### Kept out of the ratio

| ID | Seg | Date said | Quote (cite) | Why excluded | Best evidence |
|---|---|---|---|---|---|
| B4 | B | 16-Jan-2025 | "we would definitely be profitable from the metal bellows business starting from the next quarter which is Q1 of FY '26" (Q3FY25 p6) | Not verifiable: bellows profit never disclosed | Q1FY26 bellows sales Rs 1.3 cr (Q1FY26 p8) and "utilization is not at that capacity" (Q1FY26 p8). INFERRED likely miss |
| B5 | B | 05-Nov-2024 | Hyd-Air "approximately INR30 crores to INR35 crores" by end-FY26, "Those will be like third party sales" (Q2FY25 p8, p9) | Not verifiable: Hyd-Air FY26 total Rs 31.64 cr, third-party share undisclosed | MD says Hyd-Air capacity is now mainly for Aeroflex (Q2FY27 p8) |
| X1 | C | 29-Oct-2025 | "we expect tariffs to go down", by "December or something" (Q2FY26 p7) | Exogenous policy forecast | Relief from about mid-Feb-2026; tariff "in the range of between 10%" and 15% (Q4FY26 p18). Would be Partial |

### Pending rows (deadline after 30-Sep-2026)

| ID | Seg | Date said | Quote (cite) | Target | Deadline | Status at H1FY27 |
|---|---|---|---|---|---|---|
| P1 | C | 07-May-2024 | "over the next four to five years, our EBITDA margins should come to about 25-odd percent" (Q4FY24 p18) | 25% EBITDA | FY28-FY29 | H1FY27 23.77%. Now "blended" (Q1FY27 p4) |
| P2 | C | 16-Jan-2025 | "by FY '27, we should be in the range of 24% to 25% EBITDA margins on a conservative level" (Q3FY25 p10) | 24-25% | FY27 | Lowered to "around 23%" (Q4FY26 p16). H1 23.77%. Tracking to miss the original |
| P3 | C | 05-Aug-2024 | "total sales of about INR1000 crores over the next 4 years to 5 years" (Q1FY25 p6); "more than INR1,000 crores over the next 3 years" (Q3FY26 p13) | Rs 1,000 cr | FY29 | Raised: FY29 Rs 1,000 cr "definitely", FY30 "close to about INR1,500 crores" (Q2FY27 p13) |
| P4 | C | 06-May-2026 | FY27 growth "about 35-odd percent" (Q4FY26 p19); raised to "INR715 crores to INR725 crores at the least" (Q2FY27 p14) | +60% | FY27 | H1 total income +80.7%. Tracking to hit |
| P5 | S | 06-May-2026 | "20% to 22% contribution of the entire business would be through skid assemblies" (Q4FY26 p17); FY27 skids "initial target ... close to INR125 crores", now Rs 150-200 cr (Q2FY27 p14) | Rs 150-200 cr | FY27 | H1 Rs 82.42 cr, 23.4% of revenue |
| P6 | S | 29-Oct-2026 | 15,000 by Dec-2026; 30,000 skids and 30 mn m hose by Mar-2028, Rs 202 cr (Q2FY27 p3, p4) | Capacity | Dec-2026, Mar-2028 | 12,000 commissioned |
| P7 | S | 29-Jan-2026 | Rs 300-350 cr at peak, "'29, FY'29" (Q3FY26 p4, p16) | Skid revenue | FY29 | Run rate about Rs 200 cr (Q2FY27 annualised) |
| P8 | S | 06-May-2026 | 15,000 capacity at "at least 60% to 70%" utilisation "by, say, March of next year" (Q4FY26 p9) | Utilisation | Mar-2027 | Q2FY27 says 40-50% for FY27 (Q2FY27 p10) |
| P9 | B | 05-Nov-2024 | Bellows Rs 85-90 cr "in the next year and a half or two" (Q2FY25 p7) | Rs 85-90 cr a year | May to Nov-2026 | Annualised Rs 24 cr. Tracking to miss |
| P10 | C | 07-May-2024 | assemblies "60% to 70% on a ballpark figure" of sales in 3-4 years (Q4FY24 p20) | 60-70% | FY27-FY28 | 63% in Q1FY27 on a bucket that now includes skids (Q1FY27 p4) |
| P11 | R | 18-Dec-2025 | Robotic welding, automatic stations and annealing by "December 2026" (board outcome) | Commissioned | Dec-2026 | 2 robotic lines done (Q4FY26 p3) |
| P12 | S | 29-Oct-2026 | International skid supply "we are hoping that this should be closed soon" (Q2FY27 p10) | First supply | Open | Sampling and pricing stage |

### Credibility ratio

| Segment | Resolvable rows | Hits + overachieved | Partial | Miss | Ratio |
|---|---|---|---|---|---|
| Core and group (C) | C1-C20 = 20 | C4, C6, C8, C9, C14, C15, C17 hits + C20 overachieved = 8 | 0 | C1, C2, C3, C5, C7, C10, C11, C12, C13, C16, C18, C19 = 12 | 8 / 20 = **40.0%** |
| Skids (S) | S1-S5 = 5 | S1, S2 = 2 | S4 = 1 | S3, S5 = 2 | 2 / 5 = **40.0%** |
| Bellows and Hyd-Air (B) | B1, B2, B3, B6, B7, B8 = 6 | B1 = 1 | B6 = 1 | B2, B3, B7, B8 = 4 | 1 / 6 = **16.7%** |
| Robotics (R) | R1 = 1 | 0 | 0 | R1 = 1 | 0 / 1 = **0%** |
| All new verticals (S + B + R) | 12 | 3 | 2 | 7 | 3 / 12 = **25.0%** |
| **Total** | **32** | **11** | **2** | **19** | 11 / 32 = **34.4%** |

Sensitivity:
- Partial rows at half credit: (11 + 1) / 32 = 37.5%.
- B4 scored a miss and B5 a hit (gross Hyd-Air revenue inside the range): (11 + 1) / 34 = 35.3%; bellows and Hyd-Air 2 / 8 = 25.0%.
- Old EBITDA definition throughout: no verdict changes (C14 and C15 hit on both).

What the ratio says: the financial guidance that management controls most directly (EBITDA growth and margin, C8, C9, C14, C15, C20) was delivered every year. Capacity and timeline promises slip by one to six quarters as a rule, not an exception. Revenue promises for anything new (bellows, miniature bellows, Hyd-Air third-party, skid exports) are the least reliable, with one large exception: the skid business, where the customer sets the schedule, delivered more revenue than first guided even while the capacity ran six months late.

---

## Part 2. The liquid-cooling skid story, in date order

| Date | Source | What was said or filed | Grade |
|---|---|---|---|
| About Jul to Sep-2024 | Q1FY27 p7 | "from the day we started the discussion with them to the date of the first transaction ... took almost 10 to 11 months" | ESTABLISHED (MD's retrospective) |
| 02-May-2025 | Q4FY25 p3 | "we are collaborating with a multibillion-dollar global company, which is headquartered in the U.S.A. for providing flow solutions for liquid-based cooling for AI data centers". To be implemented at the bellows plant | ESTABLISHED |
| 29-Jul-2025 | Q1FY26 p2, p3, p9, p13 | "signed a long-term agreement with a listed U.S. corporation" with "market capitalization of over USD 50 billion"; "first order of about INR7.8 crores"; the US company "has received the contract for the data center cooling for the India market"; margins withheld: "we have signed a confidential agreement with the customer" | ESTABLISHED |
| 16-Oct-2025 | Reg 30 filing, Bellow Division | Second order "approximately INR 7.8 crores ... under the existing global agreement" for "the subsidiary of U.S. based corporation" | ESTABLISHED. No separate Reg 30 for the first order found (UNVERIFIED whether one exists) |
| 29-Oct-2025 | Q2FY26 p2, p8, p9, p14 | "second order from the same customer"; "this company is basically the Indian subsidiary of the U.S. company"; "they have asked us to ramp up the capacity"; "we will be their sole suppliers"; "there has been no sales as yet"; orders "approximately INR16 crores already" | ESTABLISHED. Public before pricing |
| 16-Dec-2025 | EOGM notice | Relevant date for the preferential price | ESTABLISHED |
| 18-Dec-2025 | Board outcome, 5:00 to 5:55 pm, signed 19:50 | Skid capacity 2,000 to 15,000 by Jun-2026, existing utilisation "Under trial production"; Rs 97.56 cr capex; preferential 30,10,398 shares at Rs 182.70 = Rs 55 cr, all in one meeting. No order pipeline or revenue potential stated | ESTABLISHED |
| 18-Dec-2025 | EOGM notice | Objects: working capital and GCP, not capex (F1) | ESTABLISHED |
| 29-Jan-2026 | Q3FY26 call | See the next table | ESTABLISHED |
| 03-Feb-2026 | Reg 32 statement | Allotment; "Date of Raising Funds February 03, 2026" | ESTABLISHED |
| 01-Apr-2026 | Reg 30 capacity update | 6,000 a year from 01-Apr-2026; 15,000 by "June/July 2026"; 571 skids in Q4FY26, "installed across multiple data centers" | ESTABLISHED |
| 06-May-2026 | Q4FY26 p3, p5, p6, p7, p9 | "617 skid assemblies" for about Rs 21.2 cr over four months; order book withheld "due to disclosure agreements"; exclusivity "with regards to technology, with regards to supply, with regards to everything"; "tied up with the India subsidiary"; no patent, "since they are the principal"; design now done by Aeroflex's team | ESTABLISHED |
| 01-Jul-2026 | Reg 30 capacity update | 9,000 a year; 1,040 skids in Q1FY27 | ESTABLISHED |
| 28-Jul-2026 | Q1FY27 p6, p8, p12, p14 | Price range Rs 1 lakh to Rs 5 lakh a skid; 15,000 sized "based on their projections at that time"; dispatch schedule "2 months in advance"; end customer is "the customer of our customer"; Q2 schedule offered "on a one-to-one basis"; "About 40-odd skids go into 1 megawatt"; bought-in "fittings and the connectors and the valves" | ESTABLISHED |
| 29-Oct-2026 | Q2FY27 p3, p6, p9, p13, p14 | 12,000 commissioned, 15,000 by Dec-2026, 30,000 by Mar-2028 for Rs 78 cr; "the biggest player in this industry is vertiv energy globally"; "the design team of Vertiv works in close connection with our design team"; international prospect is the "Same customer."; FY27 skids Rs 150-200 cr | ESTABLISHED (words); customer identity INFERRED, see below |

### What was said on 29-Jan-2026 (after pricing on 18-Dec-2025, before allotment on 03-Feb-2026)

| Topic | Quote (cite) | New versus the 18-Dec-2025 public record? |
|---|---|---|
| First dispatch | "We completed the first commercial dispatch of the advanced flow control components and skid assemblies for the liquid cooling application" (Q3FY26 p2) | New. The board outcome said "Under trial production" |
| Demand | "to support the rising demand that we are witnessing, we are expanding our skid assembly capacity to 15,000 units per annum" (Q3FY26 p2) | Repeats the board outcome |
| Pipeline | "we have a pipeline of about INR45 crores that we already have, which is planned for dispatches as per the schedule given by our partner" (Q3FY26 p15) | New. First value attached to the skid order flow |
| Basis of capex | "we are actually doing the capex based on the demand forecast that has been given by our partner" (Q3FY26 p16) | New. Confirms the board relied on a partner forecast |
| Peak revenue | Analyst: "INR300 crores to INR350 crores of revenue at peak utilization, this is my understanding"; MD: "Capex is less than INR100 crores, just that." and about Rs 3 lakh a skid "assuming an 80% capacity utilization" (Q3FY26 p4); peak in FY29 (Q3FY26 p16) | New in the record; the analyst says "you said", source before this call not found |
| Margins | "this particular business is dedicated for one customer" (Q3FY26 p10), so margins are confidential; "better than the margin in the hoses", close to assemblies (Q3FY26 p11) | New |
| Exclusivity | "exclusivity for the next 5 years. This is for just the India market" and "It's a normal buyer-seller transaction" (Q3FY26 p4) | New. The 16-Oct-2025 filing said "global agreement" |
| Funding | Preferential money not yet received (Q3FY26 p8); capex "including working capital" about Rs 97 cr (Q3FY26 p9); "we don't plan to take on any debt" (Q3FY26 p10) | Partly new; contradicts the EOGM objects (F1) |
| Exports | "Maybe 6 months down the line, we may start with exports" (Q3FY26 p15) | New |
| Strategic intent | "second hub for their worldwide supply" (Q3FY26 p18) | New |
| Not asked | No analyst asked about the preferential price, the allottees, or the objects | ESTABLISHED (all 10 questioners) |

### The skid business on each attribute the caller asked about

- **Customer.** The Indian subsidiary of a listed US company with market capitalisation "over USD 50 billion" (Q1FY26 p2; Q4FY26 p6). ESTABLISHED that on 29-Oct-2026 the MD said "the design team of Vertiv works in close connection with our design team to develop the SFN design" and "our products will be in accordance to what is the requirement by Vertiv" (Q2FY27 p13), in answer to an analyst who named Vertiv first. INFERRED, one step: the exclusive customer is Vertiv's Indian subsidiary. No filing or deck names it; the Q2FY27 deck says only "Approved supplier to a leading global provider of digital infrastructure and thermal management".
- **Concentration.** One customer, India-exclusive for five years, 23-24% of revenue in H1FY27 (F2).
- **End geography.** India only so far: "All the skid assemblies that we are manufacturing or the orders that we have received for the skid assemblies is for the India market only" (Q3FY26 p15). International supply in sampling and pricing (Q2FY27 p10).
- **Margins.** Never disclosed. Said to be "better than the margin in the hoses" (Q3FY26 p11), then "in line with the average margins" of the company (Q4FY26 p16), then "on the same level as the margins" of the company (Q1FY27 p9). The direction of the description has drifted down from above-hose toward company average.
- **Bought-in content.** "the fittings and the connectors and the valves" are bought from vendors, and "the best way to judge is to see our gross margins" (Q1FY27 p14). INFERRED: a material share of skid value is pass-through; material cost including inventory change was 57.0% of revenue in Q2FY27 against 56.2% in Q2FY26, and 56.4% against 57.2% for the half (Q2FY27 deck), so the skid mix has not moved gross margin much either way so far.
- **Pricing basis.** Per-skid, project-specific: Rs 1 lakh to Rs 5 lakh (Q1FY27 p6); deck range Rs 1.10 lakh to Rs 5.50 lakh; average Rs 4.99 lakh (Q3FY26), Rs 3.32 lakh (Q4FY26), Rs 3.11 lakh (Q1FY27), Rs 3.39 lakh (Q2FY27). The MD calls the average "just an average metric" (Q2FY27 p14).
- **Tenure.** Five-year India exclusivity (Q3FY26 p4); intact at Q2FY27 p8. Start date not disclosed. Visibility: firm schedule about two months ahead (Q1FY27 p12), annual "vision" from the partner (Q4FY26 p5).
- **Capacity.** 2,000 (trial, Dec-2025), 6,000 (Apr-2026), 9,000 (Jul-2026), 12,000 (Oct-2026), 15,000 by Dec-2026, 30,000 by Mar-2028. Units shipped 46, 571, 1,040, 1,475 in Q3FY26 to Q2FY27 (Q2FY27 deck).

---

## Part 3. What analysts asked, and how management answered, on seven topics

### 3.1 WDV to SLM depreciation change

- **Asked:** never. Raised only in the MD's opening remarks on 29-Oct-2026 (Q2FY27 p5), after the PAT growth figure. No analyst on that call followed up.
- **Answer given unprompted:** "to better reflect the expected usage of the assets", "based on the advice of technical experts and also considering significant investments being undertaken in the capital -- on capex" (Q2FY27 p5).
- **Context the calls supply:** FY26 depreciation rose from Rs 11.27 cr to Rs 26.08 cr (Q4FY26 deck), and the MD had blamed the FY26 PAT shortfall on it: "PAT growth will be slightly lower because we have higher depreciation" (Q1FY26 p5). The method changed in the first half-year after the year in which depreciation caused the PAT guidance miss (F5). INFERRED: the timing invites the reading that the change targets reported PAT; the record does not show motive. See F4 for the numbers.

### 3.2 The preferential issue and its objects

- **Asked:** only obliquely, once. On 29-Jan-2026 an analyst asked about cash and capex; the MD volunteered that "we have not yet received the funds from the preferential allotment" (Q3FY26 p8). The analyst then said "we have raised the money to fund our capex", and the MD replied that capex "including working capital and all that we have planned is around INR97 crores" (Q3FY26 p9).
- **Never asked on any call:** the Rs 182.70 price, who the six allottees are, why the objects are working capital and GCP, the Rs 1.42 cr advisory fee, or why a preferential replaced the QIP that was to be used "only ... once the acquisition" was final (Q1FY26 p11). The word "preferential" appears twice in all 13 transcripts, both in that one answer.

### 3.3 Receivables

- **Asked:** Q2FY24 (two analysts), Q2FY25 (one), Q2FY27 (one). Not asked on the nine calls in between, while receivable days ran 107 to 115.
- **Answers:** US and Latin American transit time and credit terms, and "our aim is to reduce the working capital cycle over the next few quarters" (Q2FY24 p8); Red Sea delays, "the additional 15 to 20 days of working capital has been impacted" (Q2FY25 p10); "our receivables has grown at a slower pace as compared to our sales" and receivable days "reduced in this particular quarter and also in this first half of the year as compared to the first half of last year" (Q2FY27 p15).
- **Check (INFERRED arithmetic from deck balance sheets):** Sep-2026 receivables Rs 203.83 cr against Rs 123.31 cr a year earlier, +65%, on H1 revenue +81%: the claim holds year on year, and days fell from about 115 to about 105.5 (H1 annualised). Against Mar-2026 (Rs 129.82 cr), receivables rose 57% in six months while half-year revenue rose 43% (H1FY27 Rs 352.74 cr vs H2FY26 Rs 246.73 cr). The MD chose the comparison that works; the sequential one does not. Framing, not a false statement.
- **Not raised on any call:** the standalone bad-debt provision of about Rs 1.5 cr noted in working-notes.md (not re-verified in this pass).

### 3.4 US tariffs

See Part 8. In short: asked on every call from Q4FY25 to Q4FY26; answers moved from "we don't expect much of, I would say, threat" (Q4FY25 p9) to a disclosed demand dip, deferrals and a discount.

### 3.5 Parent company, holding structure, related parties

- **Q4FY24 p12.** On the two promoter entities: "Sat Industries is basically a promoter company and Italica Global is basically a subsidiary of Sat Industries based in the Middle East."
- **Q4FY26 p15.** Asked about group companies, merger plans and whether management time is shared: "since this call is specifically for Aeroflex Industries, I'll limit my answer Aeroflex Industries itself ... With regard to the group companies, we can discuss it offline." Follow-up: "No. So right now, I'm managing Aeroflex Industries."
- **Q2FY27 p14.** Asked about the parent's acquisition of a valves company serving data centres and whether it would supply Aeroflex: "the parent company has acquired them mostly into sanitary valves. So it will be difficult for me to comment on this call with regards to that." Then: "The liquid cooling vertical is under the Aeroflex industries itself."
- **INFERRED.** Skids use bought-in "fittings and the connectors and the valves" (Q1FY27 p14). A parent-owned valves business supplying the skid line would be a related-party channel inside the fastest-growing segment. **UNVERIFIED:** the parent's acquisition itself (it is the analyst's assertion; I have not seen the parent's filing), and whether any purchases from it have occurred. Check Aeroflex's half-year RPT disclosure and the parent's Reg 30 filings before using this.

### 3.6 The Hyd-Air merger

- **Announced** in the Q2FY27 opening remarks: integration to "create a more streamlined and efficient business structure", reduce "administrative and compliance related costs" (Q2FY27 p2).
- **Asked** by two analysts. Cost saving: "we don't have a specific number in terms of that, but we expect at least a couple of percentage margins to increase just on account of the cost"; pressed for basis points: "probably once we complete the merger ... I'll be able to share with you the exact numbers" (Q2FY27 p6). Customer certification benefit: "a lot of the capacities of Hyd-Air are now being utilized to manufacture products for Aeroflex Industries. So, it is almost like a backward integration" (Q2FY27 p8).
- **Not asked:** why the third-party growth thesis (Rs 30-35 cr, then Rs 40-50 cr) was dropped; what Hyd-Air's FY26 profit was (about Rs 0.25 cr on my reading of its accounts); and the funding contradiction from 2024 (F11). The "couple of percentage" claim is out of scale with a subsidiary of that size (F11).

### 3.7 The COO exit

- **Asked:** never. **Mentioned by management:** never, after the appointment was announced on 16-Jan-2025 (Q3FY25 p3).
- Resignation filed 20-May-2025, effective 30-Jun-2025, "personal reasons"; the Company Secretary changed in Jul-2025; AR FY26 gives a different effective date for the COO (F13). The 29-Jul-2025 call, the first after the exit, contains no reference to it.

---

## Part 4. Language drift, dodged questions, who answers, who attends

### 4.1 Language drift

| Theme | Earlier | Later | Read |
|---|---|---|---|
| Debt | "Zero. We're debt free." (Q3FY25 p11); "we don't plan to take on any debt" (Q3FY26 p10) | "internal accruals, bridge loan financing and equity fund raise if required" (Q2FY27 p4) | Firm statement abandoned in nine months (F12) |
| Equity raising | QIP Rs 400 cr, "most of the proceeds of the QIP will be used for inorganic acquisitions" (Q4FY25 p4); "the QIP will only be done once the acquisition" is final (Q1FY26 p11) | Rs 55 cr preferential for working capital and GCP, no acquisition | Purpose of dilution changed (F1) |
| Hyd-Air funding | "entirely funded by internal accruals" (Q4FY24 p3) | "mix of internal accruals and IPO proceeds" (Q1FY25 p3) | Factual statement corrected three months later, without comment |
| 25% margin | "about 25-odd percent" in 4-5 years (Q4FY24 p18); "24% to 25%" by FY27 (Q3FY25 p10) | FY27 "around 23%" (Q4FY26 p16); "25% blended margin combined as a whole" (Q1FY27 p4) | Deadline and scope both loosened |
| Margin track record | (not found earlier) | "last year we had set out a target of increasing our EBITDA margin by approximately 100 basis points every year" (Q3FY25 p10) | Retroactive target, not found in the record |
| Assemblies share | About 33% (Q4FY24 p20); 49% for 9M FY25 "a year ahead of schedule" (Q3FY25 p2) | Bucket now "includes the assemblies, fittings, bellows and skid assemblies" (Q3FY26 p3) | Definition widened as new lines arrived |
| Coil sourcing | Imports "50% or slightly less" (Q3FY24 p8) | "still predominantly importing" (Q3FY25 p15) | The earlier claim looks wrong; the later one is the admission |
| Tariff impact | "we don't expect much of, I would say, threat" (Q4FY25 p9) | "if not for the tariffs ... by far the best quarter ever" (Q2FY26 p7); "I might not have informed in the earnings call, but the tariffs on our products increased by almost 3x" (Q1FY26 p9) | The Q1FY26 line is itself inaccurate: the 3.5-4% to 10% rise was stated on 02-May-2025 (Q4FY25 p9) |
| Tariff cost sharing | "majority ... borne by the customers themselves, with a small rebate" (Q2FY26 p12) | Analyst: "price hit of 8%"; MD: "when we gave a discount to our customers" (Q3FY26 p17) | "Small" became 8% (F8) |
| Skid agreement | "existing global agreement" (Reg 30, 16-Oct-2025) | "just the India market" (Q3FY26 p4) | F7 |
| Skid margins | "better than the margin in the hoses" (Q3FY26 p11) | "in line with the average margins" (Q4FY26 p16) | Description drifting down |
| Skid design | "developed jointly with our partners" (Q3FY26 p19) | "the design which was initially to be provided by the principal is actually now being done by our entire team" (Q4FY26 p9) | Used to explain a shortfall |
| Profit metric | PAT growth until Q1FY26 | "cash PAT" or "cash profit" Q2FY26 to Q1FY27; dropped on Q2FY27 when it was the weaker number | F4 |
| FY26 targets | "at least 20% to 25%" bottom-line growth (Q4FY25 p6) | "we have been able to achieve the targets that we had set out at the start of the financial year" (Q4FY26 p4) | PAT +5.75% (F5) |

### 4.2 Dodged or deferred questions

| Call | Question | Answer |
|---|---|---|
| Q4FY24 p11 | Organised versus unorganised market split | "I will probably get back to you offline" |
| Q4FY25 p12 | How much hose is sold as assemblies | "post the call, we'll probably share with you offline" |
| Q4FY25 p13 | Bellows EBITDA loss | "I can get back to you"; never answered on a later call |
| Q1FY26 p9 | Order book | "we specifically don't have like a specific number for an order book" |
| Q1FY26 p13 | Data-centre margins | "we have signed a confidential agreement with the customer" |
| Q3FY26 p10 | Skid margins | "dedicated for one customer" |
| Q4FY26 p5 | Skid order book | "due to disclosure agreements, we'll not be able to share" |
| Q4FY26 p15 | Group companies | "we can discuss it offline" |
| Q1FY27 p12 | Q2 skid delivery schedule | "Probably we can take it on a one-to-one basis" |
| Q2FY27 p6 | India liquid-cooling market size | "I can share with you later" |
| Q2FY27 p6 | Merger cost savings in bps | Will share "once we complete the merger" |
| Q2FY27 p14 | Parent's valves acquisition | "difficult for me to comment on this call" |

### 4.3 Who answers hard questions

- **ESTABLISHED.** The MD, Asad Daud, gives the opening remarks and every answer on all 13 calls. The only other management voice is Harshit Savla, once, on inventory days (Q2FY24 p10). The Whole-time Director and CFO, Mustafa Kachwala, signs the transcript cover letters and has not spoken on any call. No IR head, COO or business head has spoken.
- **INFERRED.** Accounting questions (depreciation method, EBITDA definition, receivables ageing, tax demands) are answered, if at all, by the MD in operating language. The CFO's silence is why the depreciation and EBITDA-definition changes got no technical explanation on any call.

### 4.4 Analyst attendance (questioners per call, firm as announced by the moderator)

| Call | Date | Count | Firms |
|---|---|---|---|
| Q2FY24 | 08-Nov-2023 | 7 | AP Capital, Motilal Oswal, Invesco MF, Lucky Investment, Jain Capital, Deep Financial, Universal Sompo |
| Q3FY24 | 29-Jan-2024 | 8 | Nippon India MF, LIC MF, Lucky, Deep Financial, 9 Rays, Sequent, Bank of India MF, NX Wealth |
| Q4FY24 | 07-May-2024 | 8 | Lucky, Green Lantern, LIC MF, Awriga, Universal Sompo, AUM Advisors, Invesco, Inoquest |
| Q1FY25 | 05-Aug-2024 | 7 | Wallfort PMS, Skaniva, LIC MF, Opal Securities, Invesco MF, Ace Investors, Green Lantern |
| Q2FY25 | 05-Nov-2024 | 7 | Lucky, 9 Rays, Deep Financials, Astute, Lokesh Maru (Nippon on other calls), Envision, Niveza |
| Q3FY25 | 16-Jan-2025 | 9 | NV Alpha, Carnelian, Ithought PMS, Bank of India MF, ICICI Securities, IIFL, Tiger Assets, Nippon India MF, Astute |
| Q4FY25 | 02-May-2025 | 8 | Sequent, Carnelian, LIC MF, Astute, Skaniva, Lucky, Asit C Mehta, NB Investments |
| Q1FY26 | 29-Jul-2025 | 11 | Sequent, Carnelian AMC, Astute, Pkeday, Jeevan (firm not stated), Arihant, Insightful, Sapphire, Fort Capital, TCG AMC, Vaikarya |
| Q2FY26 | 29-Oct-2025 | 7 | Sapphire, Carnelian, Lokesh Maru, Keynote, LIC MF, Perpetual, Athena |
| Q3FY26 | 29-Jan-2026 | 10 | Sequent, Carnelian, Lucky, Omvetri, Kosh, Nvest, Front Wave, Xponent Tribe, Adroit, Longequity |
| Q4FY26 | 06-May-2026 | 13 | Wallfort, Sequent, ACMIL, Niveshaay (2), Lucky, ithought, Astute (2), Eklavya, AK Investment, Sapphire, Trinetra |
| Q1FY27 | 28-Jul-2026 | 13 | ithought, Asit C Mehta, Sequent, Trinetra, Astute, Niveshaay (2), Sapphire, Badrinath, Lucky, Haitong, Motilal Oswal FS, Qode |
| Q2FY27 | 29-Oct-2026 | 10 | Sequent, Toro, Niveshaay, Trust MF, Astute, Equentis, KRIIS PMS, Shagun, Sapphire, Perpetual |

- **Pattern (INFERRED).** Attendance rose with the data-centre story (7-9 per call to 10-13). The mix moved the other way: mutual funds asked on 6 of the first 7 calls (Invesco, Nippon, LIC, Bank of India) and on only 2 of the last 6 (LIC on Q2FY26, Trust MF on Q2FY27). The later calls are dominated by PMS, boutique advisers and family offices (Sequent, Astute, Niveshaay, Sapphire, Trinetra, Lucky). Sell-side brokers appear rarely (Motilal Oswal, ICICI Securities, IIFL, Haitong, Asit C Mehta). Repeat questioners (Raman KV of Sequent on 6 calls, Prem Luniya of Astute on 7) set much of the agenda.
- **The questions not asked are as telling as the attendance.** Across 118 questioner slots, nobody asked about the depreciation change, the preferential pricing or objects, or the COO exit.

---

## Part 5. Margin guidance history against delivery

### Guidance, in order

| Date | Cite | Margin statement |
|---|---|---|
| 08-Nov-2023 | Q2FY24 p7, p9 | Hoses 15-18%, assemblies 25-30%; bellows "between 25% to 30%" at Rs 100-120 cr revenue |
| 29-Jan-2024 | Q3FY24 p8, p9 | "our aim would be to increase our margins on a QoQ basis"; hoses "16% to 18%", assemblies "22% to 24%" (assemblies cut from 25-30% in under three months, no explanation) |
| 07-May-2024 | Q4FY24 p4, p18; Q4FY24 deck | "we expect our margins to grow upwards of 25% or more" (the deck says "EBITDA growth of 25% +"; the analysts read it as growth); FY25 margin "much higher" in basis points; about 25% in 4-5 years |
| 05-Nov-2024 | Q2FY25 p6 | At Rs 500 cr, margins "better by at least 50 to 100 basis points" than 22.1% |
| 16-Jan-2025 | Q3FY25 p10 | "by FY '27, we should be in the range of 24% to 25% EBITDA margins on a conservative level" |
| 02-May-2025 | Q4FY25 p6 | FY26: "at least a 100 basis point increase in the margin" |
| 29-Jul-2025 | Q1FY26 p8, p11 | FY26 "21% to 22% on an annual basis"; bellows 28-30% "at an optimum capacity utilization" |
| 29-Oct-2025 | Q2FY26 p3 | "within the range of 21% to 22% in the coming quarters" |
| 29-Jan-2026 | Q3FY26 p11, p17 | Skids "better than the margin in the hoses"; "an EBITDA margin of 25% over the next couple of years" |
| 06-May-2026 | Q4FY26 p16 | FY27 "around 23%"; 25% "over the next couple of years"; skids "in line with the average margins" |
| 28-Jul-2026 | Q1FY27 p4, p5 | "25% blended margin combined as a whole"; hose 16-20%, assemblies 22-26% |
| 29-Oct-2026 | Q2FY27 p13 | "margins to be at 25%" with about Rs 1,500 cr revenue by FY30 |

### Delivered (decks; "new" = EBITDA excluding other income, on revenue from operations)

| Period | EBITDA margin | Basis |
|---|---|---|
| FY24 | 20.40% | Old (Q4FY24 deck) |
| FY25 | 21.54% old; 21.01% new | Q4FY25 and Q4FY26 decks |
| Q1FY26 | about 18.4% | New; INFERRED as FY26 less Q2 to Q4 |
| Q2FY26 | 23.34% | New (Q2FY27 deck) |
| Q3FY26 | 23.45% | New (Q4FY26 deck) |
| Q4FY26 | 23.86% | New (Q4FY26 deck) |
| FY26 | 22.57% new; 22.81% old (INFERRED) | Q4FY26 deck |
| Q1FY27 | 23.04% | New (Q2FY27 deck) |
| Q2FY27 | 24.27% | New (Q2FY27 deck) |
| H1FY27 | 23.77% | New (Q2FY27 deck) |

**Read.** Margins have risen about 100-130 bps a year, steadily, as guided for FY25 and FY26. The 25% goal has been restated six times and has moved from "4-5 years" (May-2024) to "FY27" (Jan-2025) to "the next couple of years" (2026) to FY30 (Oct-2026), and from a hose-business ambition to a "blended" company figure that now relies on skids. The segment margins quoted for hoses and assemblies have not moved in three years (hoses 15-20%, assemblies 22-26%), so the group margin gain is mix, not segment improvement (INFERRED from management's own segment ranges).

---

## Part 6. Growth strategy as stated on the latest calls (Q1FY27 and Q2FY27)

Management's own frame is "3 key priorities" (Q2FY27 p4). Numbered below with the operating detail given elsewhere on the same calls.

1. **Core hoses and assemblies.** "strengthen our core metallic flexible hoses and assemblies business through capacity expansion, automation, product innovation and deeper market penetration" (Q2FY27 p4). Hose capacity 20 to 30 mn m by Mar-2028 for Rs 124 cr (Q2FY27 p3); hose utilisation about 80%; base-business growth "somewhere in the range of about 15% to 20%" (Q4FY26 p19). Peak hose revenue "closer to about INR900" cr at 30 mn m (Q2FY27 p14).
2. **Scale liquid cooling.** "scale up our liquid cooling solutions business by expanding our manufacturing capabilities, capacity, strengthening our engineering capabilities and also increasing the engagement with our customers across the data center ecosystem" (Q2FY27 p4). Skids 15,000 by Dec-2026 and 30,000 by Mar-2028 for Rs 78 cr; incremental revenue potential of both expansions "approximately INR500 crores to INR550 crores per year" at peak (Q2FY27 p4). FY27 skids Rs 150-200 cr (Q2FY27 p14).
3. **Technology and R&D.** "continuously invest in technology, R&D and advanced manufacturing to develop specialized solutions for these high-growth industries" (Q2FY27 p4). One patent granted, for automated 3D CAD modelling of braided hose assemblies (Q2FY27 p4); "more than 16 products under development" (Q4FY26 p3).
4. **International skid supply to the same customer.** "advanced stage of sampling and pricing" (Q2FY27 p10); no exclusivity outside India (Q2FY27 p8).
5. **Products adjacent to SFN.** "we are developing certain products which are -- which will be used in the liquid cooling infrastructure and which is -- which will be a complementary product to the SFN" (Q2FY27 p9). Not named until approvals.
6. **Hyd-Air folded in as backward integration** for fittings (Q2FY27 p8), replacing the third-party growth plan.
7. **Inorganic.** "We at Aeroflex are already working on certain potential acquisitions" (Q2FY27 p14), the fourth year in which an acquisition has been described as in progress.
8. **Funding.** Internal accruals, bridge loans, equity "if required" (Q2FY27 p4).
9. **Targets.** FY27 Rs 715-725 cr (+60%); FY29 above Rs 1,000 cr; FY30 about Rs 1,500 cr at 25% EBITDA (Q2FY27 p13, p14).

**Read (INFERRED).** Items 2, 4 and 5 all depend on one customer relationship. Item 7 has been "in progress" since Q1FY25 (p13, "in talks with some company internationally"). Item 6 reverses the 2024 plan.

---

## Part 7. Order book and visibility, in management's words

| Date | Cite | Quote |
|---|---|---|
| 02-May-2025 | Q4FY25 p6 | "our order book is quite strong from America" |
| 29-Jul-2025 | Q1FY26 p9 | "we specifically don't have like a specific number for an order book" |
| 29-Jul-2025 | Q1FY26 p8 | Analyst: "I know that we have approximately INR8 crores in metal bellows" (order book), not disputed |
| 29-Oct-2025 | Q2FY26 p2 | "we have not received any cancellation" of existing US orders; shipments deferred |
| 29-Oct-2025 | Q2FY26 p14 | Data-centre orders "approximately INR8 plus 8, so approximately INR16 crores already" |
| 29-Jan-2026 | Q3FY26 p3 | "We are supported by our healthy order book" |
| 29-Jan-2026 | Q3FY26 p15 | Skids: "we have a pipeline of about INR45 crores that we already have, which is planned for dispatches as per the schedule given by our partner" |
| 06-May-2026 | Q4FY26 p5 | "they have given a pipeline for the entire year and then they break it down into quarterly POs"; "due to disclosure agreements, we'll not be able to share the order book" |
| 28-Jul-2026 | Q1FY27 p12 | "we generally receive the tentative dispatch schedule from our customer 2 months in advance"; Q2 schedule "on a one-to-one basis" |
| 29-Oct-2026 | Q2FY27 p6 | Skids: "pipeline of confirmed supply over the next 3 months", undisclosed "due to confidentiality" |

**Read.** No numeric order book has ever been given for the core hose business. For skids, the only number ever given (Rs 45 cr, Jan-2026) took two quarters to ship rather than one. Firm visibility is about one quarter; anything beyond is the customer's forecast. The capex sized on that forecast (Rs 97.56 cr, then Rs 78 cr more) therefore carries the customer's forecasting risk, not a contracted volume. INFERRED: the five-year contract appears to fix exclusivity, not volumes; no volume commitment has been mentioned on any call.


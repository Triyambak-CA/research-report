# HBL Engineering - working notes

Run started 30-Sep-2026 00:45 IST, branch fm/hblengine-deepdive. Listed company: ordinary 20-section spec.
Entity: HBL Engineering Ltd (formerly HBL Power Systems Ltd), BSE 517271, NSE HBLENGINE (was HBLPOWER),
CIN L40109TG1986PLC006745. Price basis: Rs 808 at 29-Sep-2026 close (screener extract).

## Sources on disk (source-docs/, not versioned)
- AR FY22-FY26 (BSE), CARE rationales 07-Oct-2022 .. 25-Feb-2026 (6), AGM transcript 2025 (hbl.in),
  AGM 2026 outcome + scrutiniser (BSE 26-Sep-2026), two "PPT" rows from screener.
- Screener public page saved 30-Sep-2026; premium extract at firstmate/data/hblengine-deepdive/.

## Early findings
- Trap 6 hit: screener's four "concall" rows are NOT four earnings calls. Feb-2023 row = investor
  presentation filing (14-Feb-2023); Sep-2023 row = Reg 30(6) intimation of a 09-Sep-2023 analyst call;
  Jul-2024 row = an mp3 recording of an 08-Jul-2024 investor call on hbl.in; Sep-2025 row = the 2025 AGM
  transcript. Verify on exchange whether any Reg 30 transcript was ever filed.

## Named gaps
- No earnings-call transcript exists (HBL has never held a quarterly earnings call); guidance scored from filed letters,
  decks, the 2025 AGM transcript, annual reports and a machine transcript of the 08-Jul-2024 call audio.
- Screener premium: the FY26 Insights year was not yet populated, and the related-party panel stops at FY24; both
  rebuilt from the FY25 and FY26 annual reports. Screener AI chat not used (no credits). No premium-only figure
  material to the conclusions was missing.
- The company discloses no order book and no Kavach revenue line; CARE's order book (to Dec-2025) is the only series.
- Vendor-wise Kavach awards, Medha's orders, unit counts on HBL's 2026 orders: not published anywhere.
- Moebius Power Electronics' current business and share register: no MCA filings on file.
- HBL publishes only half-yearly balance sheets, so no eight-quarter working-capital cycle.

## Primary findings logged by the lead (30-Sep-2026)
- Q2 FY26 results outcome (NSE 08-Nov-2025, nse/08-Nov-2025_..._Outcomeandresults.txt p1): board note "Q2 of FY 26 has
  been extraordinarily good and management currently does not expect such good results in any single quarter in the
  next few years" and "FY 26 as a whole would be an exceptional year. Should not be a basis for future expectations of
  performance." Management itself calls FY26 a peak. Central to normalised earnings.
- Statutory auditor on the Q2 FY26 limited review: L N R Associates, Hyderabad (FRN 05381S), partner Raghuram Vedula.
  Small local firm auditing a Rs 22,000 cr market-cap company. Check tenure.
- NSE Reg 33 queries are XBRL/format defects, not quarter explanations: 25-Jun-2025 (Q4 FY25: XBRL discrepancies);
  06-Jan-2026 (Q2 FY26: XBRL discrepancies AND results not in Schedule III / Ind AS format). Filing-quality finding.
- 17-Jun-2025: BSE made the company rectify the NAMES of the entities awarding Kavach orders (May-Jun 2025 announcements
  had not named them): Western Railway (01-May-2025), IRCON International (27-May-2025), SCR (14 and 15-Jun-2025).
- 10-Aug-2025: company disowned an Eenadu article about it (not released by HBL).
- 17-Nov-2022: NSE sought details of an acquisition in the 11-Nov-2022 board outcome, incl. whether promoter group had
  an interest; reply 28-Nov-2022 is an image scan (forensic agent reading it).
- No speech-to-text tool on the machine; installing mlx-whisper in scratch to transcribe the 08-Jul-2024 call mp3
  (1h51m). If it fails, the call is a named gap.
- ORDER REGISTER (notes-05) needs re-bucketing by the lead: the agent put Apr-Jun 2025 orders in FY25 and Apr-May 2026
  orders in FY26, and counted two Sep-2022 BIDS (WCR, WR; not awarded) as intake. Rebuild FY intake from the row table.
- Verified myself: 28-May-2026 CLW LoA for on-board Kavach Ver 4.0, Rs 1,714 cr EXCLUDING 18% GST (a second large CLW
  order, after the Rs 1,522.40 cr + taxes order of 14-Dec-2024). 11-Feb-2026 BLW Ver 4.0 Rs 800.36 cr incl GST.
  31-Jan-2026 ICF Rs 575 cr incl GST "accepted an order, to be received" (announced before receipt). So Jan-Aug 2026
  announced on-board intake is about Rs 2,980 cr ex GST: the backlog was refilled after the Dec-2025 CARE low of
  Rs 2,999 cr. This changes the "one-off peak" framing: FY27 has a second on-board wave. Test: are the Ver 4.0 on-board
  sets for the SAME locomotive fleet (upgrade of Ver 3.2 sets fitted under the 2024 CLW order) or new locos?

## Lead's own reads of the results filings (30-Sep-2026, 01:20 IST)
- FY26 warranty: AR-FY26 note 40.1 (consolidated) "The contracts for supply of Kavach systems to Railways that are
  either completed or at the completion stage have been evaluated for the warranty cost during Defect Liability Period
  and the Parent Company has provided Rs 92.75 crores (undiscounted) towards warranty" plus Rs 12.45 cr other products.
  P&L warranty charge Rs 79.56 cr FY26 vs Rs 3.94 cr FY25 (selling expenses, note 40 B). Movement note 44.1: opening
  51.46 + additions 103.43 - reversals 23.86 = closing 131.03 (FY25: 47.53+31.70-27.77=51.46). Installation charges
  Rs 36.29 cr vs 6.94. Warranty to be incurred over 12-96 months. So FY26 Kavach profit is already struck after a
  warranty charge; normalised margin should NOT add it back.
- Q4 FY26 "18% tax" on screener is an artefact: filed Q4 PBT 67.45, tax 22.01-6.59=15.42 (22.9%), share of associates
  +11.71 lifts PAT to 63.75. Q4 margin: materials+inventory change 310.49 on 604.12 sales (51.4%) vs Q3 364.08/874.04
  (41.7%); other expenses 159.10 incl. Rs 25.49 cr New Labour Codes gratuity charge (note 4, FY26 results). Segment:
  electronics Q4 revenue 179 (screener). So Q4 = low Kavach volume + labour-code charge + fixed costs.
- Exceptional FY26 Rs 31.25 cr of which Rs 26.49 cr "unrecoverable costs incurred during development of
  high-performance batteries for torpedoes" (a defence development write-off; ties to the defence capital-employed lead).
- SILENT RESTATEMENT (trap b): the Jun-2026 quarter filing (08-Aug-2026) reprints the FY26 AUDITED column with
  current tax 279.60 (audited 23-May-2026: 283.65), deferred -6.63 (-6.34), PAT before associates 802.43 (798.10),
  share of associates 12.01 (16.34), profit 814.44 (814.89). Q4 FY26 column: current tax 19.41 (22.01), associates 8.55
  (11.71). Q1 FY26 column: associates 1.51 (originally 2.12). Only "regrouped wherever necessary" note. Net effect on
  PAT tiny (-0.45 cr) but the line items of an audited year moved with no explanation. Also Q3 FY26 cost lines were
  reshuffled between the Dec-2025 filing (employee 81.31, other exp 126.30) and the Mar-2026 filing (66.50, 141.11):
  Rs 14.81 cr moved from employee cost to other expenses.
- Q2 FY26 other expenses 153.84 vs Q1 95.91 and employee 77.78 vs 54.03: warranty and CMD commission accruals likely
  sit in Q2-Q3 (commission on profits to CMD Rs 56.02 cr FY26, provision note 24). Quarter-wise split not disclosed.
- Group structure changes: Torquedrive Technologies Pvt Ltd (the 100% drivetrain-named subsidiary) deconsolidated in
  Q1 FY27 and applied for strike-off under CCFS-2026; new associate Xalten Systems Pvt Ltd (Rs 6.37 cr for 9.84% fully
  diluted; CFO/ED M S S Srinath is nominee director); Green Maritime Propulsion incorporated 11-Jun-2026, HBL 60%, not
  yet subscribed.
- DEFENCE CAPITAL EMPLOYED answered from AR FY26 MD&A p.8-9: "HBL has invested about Rs 200 crores for R&D and a
  modern production plant" for defence lithium-ion cells (technology licensed from NSTL of DRDO, i.e. Naval Science
  & Technological Laboratory; NOT the associate Naval Systems & Technologies Pvt Ltd, also abbreviated NSTL), plus
  "a licensed facility for the manufacturing of fuzes has been established in Telangana". Grenade fuzes MHA-approved,
  sales started; Army approval "expected during 2027"; 155mm artillery fuze approval "during 2027". Torpedo battery
  development written off Rs 26.49 cr (FY26 exceptional). Underwater/sonar sales "may occur from FY 28".
- SEGMENT ASSET BASES DIFFER: AR FY25 (audited, p.269, lakh) FY25 segment assets: defence 297.54 cr, unallocated
  583.74. The quarterly filings' "31-Mar-2025 audited" column (e.g. 08-Nov-2025) shows defence 356.12, unallocated
  525.16 (Rs 58.6 cr moved). Screener's capital-employed series follows the quarterly filings. Same year, two
  segment allocations, both labelled audited.
- MD&A: Kavach ~50% of FY26 sales and "about the same even in FY 27, although HBL expects some growth in sales over
  FY 26"; "sales will continue to be good in FY 27 and FY 28 ... both sales and PBT could decline from FY 29".
  "top two (in market share) are profitable. The third survives." Drivetrain: last AR said sales from Oct-2026;
  magnet-less redesign, nine-month delay; approval for 55 T trucks by Mar-2027, pilot sales Jul-2027; 40,000 km of
  internal road trials. Marine sales limited until end Sep-2027. JV already ordered batteries for two electric tugs.
  Siemens Germany chose HBL as one of two LIB suppliers. PLT data-centre sales +100%, PLT capacity being doubled.
  NiCad "second largest supplier globally"; NiCad exports ~+15%. No Li-ion telecom packs (margins too low).
- CLW ORDER PART-CANCELLED (the Jul-Dec 2025 order-book drop): NSE 18-Dec-2025 "Information to the stakeholders":
  2,200-loco TCAS order, last delivery date 13-Dec-2025; HBL "delivered and installed 1659 (75.4 %); the undelivered
  541 units are deemed cancelled according to the terms of PO". The 2024 tender was 10,000 units across five
  suppliers; about 3,000 delivered by all suppliers; ~7,000 deemed cancelled, expected to be re-tendered (date
  unknown); three other tenders floated totalling 11,429 units, may be decided before 31-Mar-2026; "total expected
  demand, already visible for the next year" 18,429 units. CARE 25-Feb-2026 repeats: "supplied systems 76% ...
  balance order stands cancelled per order terms".
  Arithmetic: Rs 1,522.40 cr / 2,200 = Rs 69.2 lakh per loco set (ex tax). 1,659 x 69.2 lakh = ~Rs 1,148 cr of
  revenue, delivered Apr-Dec 2025: ~71% of FY26 electronics revenue (1,626) and ~35% of group revenue. Cancelled
  541 x 69.2 lakh = ~Rs 374 cr.
  ORDER BOOK ROLL-FORWARD NOW RECONCILES: 31-Jul-2025 4,479 + intake Aug-Dec (WCR 45.9) - electronics billing
  Aug-Dec (~1,170 est: Q2 794 less ~Jul share + Q3 473) - cancellation ~374 = ~2,980 vs CARE 2,999.
  Feb->Jul 2025 also reconciles on an EX-GST intake basis (3,174 + 1,543 ex-GST intake - ~260 billed = ~4,457 vs
  4,479). BUT CARE's "fresh orders aggregating Rs 1,375 crore" (Jan-Feb 2026) equals ICF 575 + BLW 800.36 = 1,375.36
  INCLUSIVE of GST: CARE quotes new orders gross of GST (trap 7a). Mixed bases.
  Implication for "who else delivered": 5 suppliers in the 2024 loco tender, ~3,000 of 10,000 delivered in total, HBL
  1,659 of them = ~55% of all on-board units delivered industry-wide (company estimate, unverified).
- 15-JAN-2026 LETTER (nse/15-Jan-2026_..._Updates_January_2026.txt, verified by lead): "From the CLW loco Kavach tender
  for 6,300 units, decided this week, HBL did not get any order, because other bidder's prices were lower." Visible loco
  demand 18,429 -> 12,129 units. FY27 Kavach "at least": loco Rs 1,000 cr + stations Rs 900 cr (Rs 400 cr more stations
  in FY28). "in FY 2026, HBL expects total sales of Kavach to be Rs.1,880 Crores."
  => GUIDANCE MISS: FY26 electronics segment revenue (all of Kavach + TMS + other electronics) was Rs 1,626.25 cr;
  standalone railway electronics Rs 1,538.61 cr. Kavach FY26 therefore <= ~Rs 1,540-1,626 cr vs Rs 1,880 cr expected
  on 15-Jan-2026 with 2.5 months left: miss of at least Rs 254 cr (13.5%+). Q4 electronics revenue 179 vs implied
  ~Rs 430 cr needed. Never explained (no call, no note).
  => Kernex's CLW 3,024 sets (15-Jan-2026) and GGT's CLW Rs 433 cr (30-Jan-2026) are from the 6,300-unit tender HBL
  lost on price. HBL won later orders (ICF, BLW, PLW, CLW-May) after that letter, so FY27 intake exceeds the Jan view.
  Stock -9.4% on 16-Jan-2026 (notes-10 E/F3).

## Verification round (30-Sep-2026, 01:40-01:50 IST)
Six verifiers on the top claims. Outcomes applied to the report:
- FY26 "audited column changed after audit": NARROWED. Profit unchanged (814.44 before NCI both times). The Aug-2026
  reprint moved associates' share to after-tax (12.01, as AR note 9A); the audited P&L face shows it gross (16.34).
  Recast as a presentation inconsistency inside the audited accounts. Q3 labour-code reclass was disclosed.
- Official Kavach spend vs HBL billing: NARROWED. Rs 813.90 cr is Mar-25..Feb-26 and the series lags deliveries;
  1,538.61 is a customer category; rolling-stock explanation unsupported. Recast in s20.
- Rs 1,880 cr FY26 Kavach forecast: NARROWED. Miss holds only if net of GST (likely). Unscored in the ratio.
- CLW cancellation: NARROWED. 1,148 cr is contract value (upper bound); roll-forward fits only if battery and defence
  orders matched their billing.
- CMD pay and AGM vote counting: see sources table in the report.
- 08-Jul-2024 call: second mlx_whisper run (condition-on-previous-text False) worked; scored in s08, labelled.

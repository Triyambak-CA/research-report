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
(none yet)

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

---
name: india-equity-deep-dive
description: Run a 16-section institutional-grade fundamental deep-dive on any Indian listed company and deliver it as a single self-contained dark-theme HTML report - with forensic accounting checks, promoter/governance analysis, guidance scorecard, scuttlebutt, reverse DCF, and a two-way investment pitch with NO Buy/Sell rating. ALWAYS use this skill when Triyambak gives a company name or NSE/BSE ticker and says any of - "deep dive", "run the deep dive", "fundamental analysis", "FA report", "full FA", "run the master FA prompt", "analyse the fundamentals of X", or asks to "get started on" a company. Do NOT use for quick single-metric questions, pure technical/chart analysis, or when he explicitly asks for the stock-report PDF skill instead.
---

# India Equity Deep-Dive

Produces a buy-side quality fundamental research report on an Indian listed company as ONE self-contained HTML file. The report has 16 mandatory sections and gives NO rating or recommendation - it presents evidence and a two-way pitch (buy case and exit/avoid case) and lets the reader decide.

## Persona

Operate as a buy-side equity analyst at a concentrated long-only India fund - combining the rigour of a forensic accountant, the scepticism of a short-seller, and the pattern recognition of a fund manager who has seen three full market cycles. The goal is truth, not a bullish deliverable. State "insufficient data for conviction" wherever it applies.

## Workflow

### Step 0 - Resolve the company
The user typically gives just a company name. Resolve it to the exact listed entity and NSE/BSE ticker (search if needed). If the name is ambiguous (multiple listed group entities, e.g. "Tata Power" vs "Tata Power REIT" style confusions), confirm with the user before burning research time. Also establish the latest reported quarter.

### Step 1 - Read the section spec
Read `references/report-sections.md` in full. It defines the 16 mandatory sections and the exact checks in each. Do not skip sections; where data is unavailable, state so explicitly rather than estimating silently.

### Step 2 - Research
Use web search extensively. Source priority, highest first:
1. Exchange filings (BSE/NSE announcements, shareholding patterns, insider/SAST disclosures)
2. Annual reports - especially notes to accounts, contingent liabilities, related party schedules, CARO annexure
3. Earnings call transcripts (last 8 quarters minimum)
4. Credit rating rationale documents (CRISIL/ICRA/CARE/India Ratings) - read these, they disclose what investor presentations hide
5. Investor presentations, DRHP (if listed within 5 years), SEBI orders
6. Broker research and financial media - last resort, and label as secondary

Budget searches across ALL 16 sections - a common failure mode is exhausting effort on financials (Section 5) and going generic on forensics (Section 6), scuttlebutt (Section 10), and positioning (Section 13). Those three sections are the differentiators; give them real search effort (LinkedIn, job portals, AmbitionBox/Glassdoor, bulk/block deal records, MF portfolio disclosures).

### Step 3 - Build the report
Read `references/html-design-system.md` and generate the report as one self-contained HTML file following that design system exactly. Save to `/mnt/user-data/outputs/` with filename pattern `[ticker]-deep-dive-DD-MMM-YYYY.html` (lowercase ticker).

### Step 4 - Deliver
Present the file. Keep the chat summary to a few lines: the one-line thesis summary, the top red flag found, and the biggest data gap. Do not restate the report in chat.

## Hard rules

- NO Buy/Sell/Hold rating, recommendation, or conviction level anywhere - the two-way pitch in Section 16 is the only conclusion format allowed.
- Reverse DCF comes BEFORE any forward valuation - first establish what the current price already assumes.
- Flag every claim that could not be verified from a primary source.
- End with a dated source list of filings, transcripts, and rating rationales actually used.
- All amounts in INR lakh/crore notation. Dates DD-MMM-YYYY. Hyphens only, never em dashes - including HTML entities (no &mdash; / &ndash;).
- Comprehensiveness beats brevity here - do not compress the analysis to fit the design; the design must carry a long document.

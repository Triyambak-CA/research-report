# Notes 07 - Cash forensics: why profits are not turning into cash

Run date 29-Sep-2026. Forensic reader pass. All amounts Rs crore unless stated.

## Conventions

- Source files sit under `Jyoti-CNC/source-docs/` (not versioned). `txt/` holds the text layer.
- "AR FY26 p.92" means PDF page 92 of `ar-fy26.pdf` (the same page as form-feed page 92 of
  `txt/ar-fy26.txt`). The FY26 and FY25 reports are printed two-up, so each PDF page carries two
  printed page numbers; these are given in brackets where they help, e.g. (pr. 180-181).
- Prospectus pages are PDF (form-feed) pages of `prospectus-jan2024.pdf`.
- The FY24 annual report is in Rs million. Figures from it are divided by 10 and flagged "(FY24 AR,
  Rs mn / 10)". The prospectus is also in Rs million.
- Transcripts: `tr-YYYY-MM` with the call date and the transcript's own "Page x of y".
- Results: `txt/co/res-YYYY-MM.txt`, cited by file and form-feed page.
- Labels: **ESTABLISHED** = read directly in a primary filing. **INFERRED** = my arithmetic or
  reasoning from primary figures. **UNVERIFIED** = could not be confirmed from a primary source.
- Screener data is aggregator data. Where the filing disagrees, the filing wins and I say so.

---

## 1. Testing the aggregator lead against the filings

| Item | Screener (lead) | Filing | Source | Verdict |
|---|---|---|---|---|
| CFO FY24 | -48 | -48.25 | FY25 AR p.81 (pr. 158-159), comparative; FY24 AR p.97: Rs mn (482.54) | Agrees |
| CFO FY25 | -105 | -105.43 | FY25 AR p.81 | Agrees |
| CFO FY26 | +54 | 54.39 | AR FY26 p.92 (pr. 180-181) | Agrees |
| PAT FY24 / FY25 / FY26 | 151 / 316 / 336 | 150.86 / 316.01 / 336.00 | FY25 AR p.80; AR FY26 p.92 | Agrees |
| 3-yr CFO vs PAT | -99 vs ~800 | -99.29 vs 802.87 | sum of above | Agrees |
| Borrowings FY23 | 835 | 834.98 (Rs mn 1,274.65 + 7,075.09) | FY24 AR p.96 (Rs mn / 10) | Agrees |
| Borrowings FY24 | 304 | 303.78 (84.51 + 219.27) | FY25 AR p.80 | Agrees |
| Borrowings FY25 | 497 | 496.88 | AR FY26 p.104 maturity table | Agrees |
| Borrowings FY26 | 853 | 849.71 + lease liabilities 3.04 = 852.75 | AR FY26 p.91, p.104 | Agrees (screener includes leases) |
| Other income FY26 | ~60 | 60.48 | AR FY26 p.106 Note 25 | Agrees |
| Other income FY25 | ~5 | **14.48** | AR FY26 p.106 Note 25; FY25 AR p.80 | **Screener wrong. Filing wins: 14.48** |
| Debtor days FY26 | 104 | 104 on billed receivables only | AR FY26 p.24 MD&A ratio table (pr. 44-45) shows 95 consolidated / 104 standalone (p.23) | Misleading: excludes Rs 613 cr unbilled revenue (Section 3). True figure 211 days |
| Inventory days | 469 / 378 / 453 | Consistent only if computed on cost of materials | derived | Metric choice; see Section 4 |

---

## 2. PAT to CFO reconciliation, FY24 to FY26 (consolidated, audited)

Sources: FY24 and FY25 columns from FY25 AR p.81 (pr. 158-159); FY26 from AR FY26 p.92 (pr. 180-181).
All ESTABLISHED except the derived "other non-cash" line (INFERRED as the balancing item, and it ties
to the listed ECL, warranty, gratuity, impairment and fair-value lines).

| Line | FY24 | FY25 | FY26 | 3-yr total |
|---|---|---|---|---|
| Profit before tax | 184.95 | 417.74 | 467.19 | 1,069.88 |
| Depreciation and amortisation | 32.75 | 36.45 | 50.20 | 119.40 |
| Finance cost added back | 89.72 | 42.08 | 69.84 | 201.64 |
| Interest and commission income | (5.11) | (8.51) | (21.78) | (35.40) |
| Unrealised forex (gain)/loss | (0.83) | 7.44 | **(57.60)** | (50.99) |
| Other non-cash (ECL, warranty, gratuity, impairment, FV) | 0.41 | 8.68 | 13.85 | 22.94 |
| **Operating profit before working capital** | 301.89 | 503.88 | 521.70 | 1,327.47 |
| Increase/(decrease) in current and non-current liabilities | (66.03) | 75.28 | 148.85 | 158.10 |
| (Increase) in current and non-current assets | (187.70) | **(563.33)** | (192.41) | **(943.44)** |
| (Increase) in inventory | (46.09) | (34.49) | **(265.49)** | (346.07) |
| Cash generated from operations | 2.06 | (18.66) | 212.65 | 196.05 |
| Direct taxes paid | (50.31) | (86.77) | (125.35) | (262.43) |
| Amount under customs seizure (exceptional) | - | - | (32.91) | (32.91) |
| **CFO** | **(48.25)** | **(105.43)** | **54.39** | **(99.29)** |
| PAT | 150.86 | 316.01 | 336.00 | 802.87 |
| Capex incl. capital advances (investing) | (114.29) | (309.83) | (323.22) | (747.34) |
| CFO minus capex | (162.54) | (415.26) | (268.83) | (846.63) |
| Finance cost paid (in financing) | (89.72) | (41.61) | (66.22) | (197.55) |

**Presentation defect (ESTABLISHED).** The company does not split working capital into
receivables, unbilled revenue, payables and so on. It uses three blunt lines: "liabilities",
"assets" and "inventory". The split below is rebuilt from balance sheet movements.

**Which line consumed the cash (INFERRED from balance sheet deltas; FX translation of Huron makes
these approximate):**

| Year | Main consumer | Rebuilt components |
|---|---|---|
| FY24 | "Assets" line 187.70 | Trade receivables +103.22 (145.88 to 249.10); unbilled revenue +31.24 (131.01 to 162.25); other current assets +39.13 (33.64 to 72.77). Liabilities fell 66.03: trade payables down 41.44 (412.99 to 371.55, FY24 AR p.96) and customer advances down 37.35 (62.50 to 25.15, FY24 AR p.113), partly offset by other financial liabilities up 18.91 (all Rs mn / 10). |
| FY25 | "Assets" line 563.33 | **Unbilled revenue +366.30 (162.25 to 528.55)**; trade receivables +237.44 (249.10 to 486.54). Inventory only +34.49. |
| FY26 | Inventory 265.49, then "assets" 192.41 | Inventory +265.49 (900.48 to 1,165.97); trade receivables +112.56; unbilled +84.75 (528.55 to 613.30); other current assets +36.45 excluding the seizure. Offset by liabilities +148.85 (Section 7). |

**Three-year bridge (INFERRED, balance sheet basis, FY23 to FY26):** unbilled revenue +482.29
(131.01 to 613.30), trade receivables +453.22 (145.88 to 599.10), inventory +346.07 (819.90 to
1,165.97). Together **Rs 1,281.58 cr absorbed against Rs 802.87 cr of PAT**. Unbilled revenue alone
equals 60% of three-year PAT. FY23 bases: FY24 AR p.96 and p.106-107 (Rs mn / 10).

---

## 3. Unbilled revenue: the main reason profits are not cash

### 3.1 The series (ESTABLISHED unless marked)

| Date | Consolidated unbilled | Standalone (India) | Huron SAS own books | Revenue (consol., year) | Unbilled / revenue | (Receivables + unbilled) days |
|---|---|---|---|---|---|---|
| 31-Mar-2021 | 47.65 | - | - | - | - | - |
| 31-Mar-2022 | 23.98 | - | - | - | - | - |
| 31-Mar-2023 | 131.01 | 96.80 | - | 929.26 | 14.1% | 109 |
| 30-Sep-2023 | 244.58 | - | - | - | - | - |
| 31-Mar-2024 | 162.25 | 100.19 | 62.05 | 1,338.47 | 12.1% | 112 |
| 31-Mar-2025 | 528.55 | 343.77 | 184.78 | 1,817.70 | 29.1% | **204** |
| 31-Mar-2026 | 613.30 | 465.48 | 147.82 | 2,093.13 | 29.3% | **211** |

Sources: prospectus p.328 restated consolidated Note 13 (Rs mn 476.54 / 239.80 / 1,310.13 / 2,445.76);
FY24 AR p.107 consolidated Note 13 (Rs mn 1,622.49) and p.76 standalone (Rs mn 1,001.87 / 967.99);
FY25 AR p.91 consolidated Note 12 and p.65 standalone; AR FY26 p.101 (pr. 198-199) consolidated
Note 13 and p.75 standalone; Huron SAS FY25 accounts `txt/co/huron-sas-fy25.txt` Note 17 "In progress
sales + Sales accrued" (Rs 1,84,77,80,655 and 62,05,36,032); Huron SAS FY26 accounts
`co-pdf/huron-sas-fy26.pdf` page 6 Note 18 (rendered `img/huron-sas-fy26-06.png`): Rs 1,47,82,03,743.

**The entity split reconciles exactly (INFERRED arithmetic, ESTABLISHED inputs):** 100.19 + 62.05 =
162.24; 343.77 + 184.78 = 528.55; 465.48 + 147.82 = 613.30. Consolidated unbilled revenue is
simply India's plus Huron's; nothing is netted against it on consolidation.

Standalone unbilled / standalone revenue: FY24 8.4% (100.19 / 1,189.72), FY25 21.3% (343.77 /
1,615.03), FY26 23.9% (465.48 / 1,949.01). Huron: FY25 72.9% (184.78 / 253.43), FY26 60.6%
(147.82 / 243.92). (INFERRED ratios.)

**True debtor days.** Billed receivables alone give 68 / 98 / 104 days (the screener and MD&A
figure). Adding unbilled revenue, which is simply revenue booked but not yet invoiced, gives 112 /
204 / 211 days. The screener figure is half the economic figure.

### 3.2 What the unbilled revenue is: percentage-of-completion (POC) accruals

- **Policy (ESTABLISHED).** AR FY26 p.97 (pr. 190-191), consolidated policy XI(a): "Revenue from fixed
  price contracts is recognised over time, when the outcome of the contract can be estimated reliably
  by reference to the percentage of completion of the contract on the reporting date under input
  method. Percentage of completion is determined as a proportion of costs incurred-to-date to the total
  estimated contract costs." Policy XI(b): sale of goods at a point in time. The same wording is in the
  prospectus (p.314, p.398), FY24 AR p.102 and FY25 AR p.61, p.86.
- **MD&A (ESTABLISHED).** AR FY26 p.21 (pr. 38-39) standalone: "Revenue from operations is recognised
  over time ... under input method." p.23 (pr. 42-43) consolidated: "Revenue from operations includes
  revenue recognised over time and not adjusted till date."
- **CMD on the call (ESTABLISHED).** 10-Nov-2025 (tr-2025-11, Page 10 of 14), asked why unbilled
  revenue rose from Rs 538 cr to Rs 673 cr in H1: "these are the very large machines. It is partially
  built up like that ... this is all our five-axis and large machines cycles. There the cycles are
  very long, more than one year". Billing is "at milestone level".
- **Old wording, not Ind AS 115 wording (ESTABLISHED).** "When the outcome of the contract can be
  estimated reliably" is the language of the withdrawn AS 7 / Ind AS 11 construction-contract
  standard. Ind AS 115.35 allows over-time recognition only if (a) the customer consumes the benefit
  as the work is done, (b) the customer controls the asset as it is built, or (c) the asset has no
  alternative use AND the seller has an enforceable right to payment for work done to date. The
  policy does not say which criterion the company relies on.

### 3.3 The auditor's key audit matter now describes a different policy

- FY25 consolidated auditor's report, KAM on revenue (FY25 AR p.77, pr. 150-151): "Estimated efforts
  is a critical estimate to determine revenue, as it requires consideration of progress of the
  contract, efforts incurred till date, efforts required to complete the remaining performance
  obligation." That is a POC key audit matter.
- FY26 consolidated auditor's report, KAM on revenue (AR FY26 p.88, pr. 172-173) and standalone
  (p.59): "Revenue from the sale of goods is recognised at point in time when the control of the goods
  is transferred to the customers, which is on dispatch/delivery". The procedures listed are
  shipping-document and cut-off tests. No mention of cost-to-complete estimates.
- **ESTABLISHED contradiction:** in one annual report, the policy note and the MD&A say "over time,
  POC input method"; the auditor's KAM says "point in time, on dispatch/delivery". The balance sheet
  carries Rs 613.30 cr of unbilled revenue, which a dispatch-based policy would not produce at this
  scale.

### 3.4 Disclosures that should be there and are not (ESTABLISHED absence)

I searched the FY26 consolidated notes (AR FY26 p.96-115) and found none of the Ind AS 115
disclosures that POC revenue of this size needs:
- no split of revenue between over-time and point-in-time (Ind AS 115.114);
- no contract balances reconciliation of contract assets and contract liabilities, and no
  explanation of significant changes (Ind AS 115.116-118);
- no remaining-performance-obligation disclosure (Ind AS 115.120);
- no significant judgements on the method and on the timing of satisfaction (Ind AS 115.123-125).
The unbilled revenue is presented as "Other financial assets" (Note 13), not as a contract asset.
Under Ind AS 115.107 a right to consideration that is conditional on something other than time is a
contract asset, not a financial asset.

### 3.5 Management's promises on unbilled revenue (ESTABLISHED quotes; outcome INFERRED)

- 18-Nov-2024 (tr-2024-11, Page 13 of 19). Analyst: the other financial assets are "more of an
  unbilled revenue, which we have for the EMS". CMD: "Correct. Absolutely right." Then: "you will see
  these numbers are going to be decreasing in the next couple of quarter now ... you end up the
  quarter four, you will see this number will reduce drastically". **Outcome:** unbilled rose from
  162.25 (Mar-2024) to 528.55 (Mar-2025), then 613.30 (Mar-2026).
- 29-May-2026 (tr-2026-06, Page 12 of 19). The EMS order book has been "static at INR700 crores for
  last 2 years or 1.5 years" (analyst, not contradicted), and EMS customers are delaying (Page 7-8:
  "Nothing has been invested much on the last component manufacturing in the last 1.5 years").
  **INFERRED:** if part of the unbilled revenue relates to EMS machines built for customers whose
  plants are delayed, that part is ageing. The ageing of unbilled revenue is not disclosed.

### 3.6 Why this matters

**INFERRED.** The FY25 rise in unbilled revenue (Rs 366 cr) equals 76% of the Rs 479 cr revenue increase; that much of the growth was not invoiced in
FY25. POC recognises the margin as each machine is built, so the profit arrives years before the cash.
If the contracts do not meet Ind AS 115.35(c), or if customers delay taking delivery, those
profits are timing, not economics. The prospectus (p.69, risk factor 27) says private customers pay
"up to 30%" with the order and "the balance amount at the time of delivery of the product, prior to
dispatch". **INFERRED:** a right to the balance that arises only at dispatch is hard to square with
an "enforceable right to payment for performance completed to date" under Ind AS 115.35(c).

**Counter-argument.** High-end five-axis and aerospace machines are often built to customer
specification, can take more than a year, and may carry termination clauses that pay for work done.
For those contracts, POC is a legitimate Ind AS 115 outcome, and the unbilled balance is the normal
footprint of a longer execution cycle. The share of high-end machines in the order book (about 40%,
tr-2026-06 Page 14 of 19) is consistent with a real long-cycle book. The rebuttal fails on
disclosure, not on principle: the company gives no contract-asset ageing, no split of over-time
revenue, and an auditor KAM that describes a different policy. Without those, the reader cannot tell
the legitimate part from the rest.

---

## 4. Inventory: the growth is raw material and stores, not long-cycle WIP

### 4.1 Mix (consolidated, ESTABLISHED)

| Component | Mar-2023 | Mar-2024 | Mar-2025 | Mar-2026 | FY26 change |
|---|---|---|---|---|---|
| Raw materials (incl. in transit) / manufactured components | 270.67 | 400.38 | 544.17 | **759.90** | +39.6% |
| Work-in-progress | 496.63 | 418.77 | 303.84 | 287.16 | -5.5% |
| Finished goods | 39.53 | 27.38 | 26.86 | 51.67 | +92.4% |
| Stores and spares | 13.08 | 19.46 | 25.61 | 67.24 | +162.6% |
| **Total** | 819.90 | 865.99 | 900.48 | **1,165.97** | **+29.5%** |
| RM share of total | 33% | 46% | 60% | 65% | |

Sources: FY24 AR p.106 Note 8 (Rs mn / 10); FY25 AR p.90 Note 7 (pr. 176-177); AR FY26 p.100 Note 8
(pr. 196-197).

**Growth comparison (INFERRED):**

| | FY24 | FY25 | FY26 |
|---|---|---|---|
| Inventory growth | +5.6% | +4.0% | **+29.5%** |
| Revenue growth | +44.0% | +35.8% | +15.2% |
| Year-end order book | 3,438 | 4,346 | 4,732 |
| Order book growth | - | +26.4% | **+8.9%** |
| Inventory days on revenue | 236 | 181 | 203 |

Order book: tr-2024-05 (call 21-May-2024) Page 3 of 17: "INR3,438 crores"; tr-2025-05 (call
26-May-2025) Page 4 of 15: "INR4,346 crores"; tr-2026-06 (call 29-May-2026) Page 4 of 19: "INR4,732 crores".

### 4.2 Verdict on the "long-cycle WIP" defence

**ESTABLISHED:** WIP fell every year, from 496.63 (Mar-2023) to 287.16 (Mar-2026). The build-up is
in raw materials and "manufactured components" (up 2.8 times in three years), stores (5.1 times) and,
in FY26, finished goods (nearly doubled).

**INFERRED, two readings:**
1. Part of the WIP fall is mechanical: under POC, cost on contracts in progress leaves inventory and
   becomes cost of sales, with the revenue sitting in unbilled revenue. WIP plus unbilled revenue went
   627.64 (Mar-2023), 581.02, 832.39, **900.46** (Mar-2026). On that basis, "work in progress" in the
   economic sense rose 43% in three years.
2. The raw material build is real stock. Management's own explanation is a pre-build for the new
   10,000-machine plant: "we have proactively built up raw material and inventory over the past 9
   months to ensure a smooth production ramp-up" (CMD, 07-Aug-2026, tr-2026-08 Page 5 of 22). Infomerics
   (10-Feb-2026, p.4-5, Key Rating Weaknesses) cites 12-month lead times on imported controllers "from Japan
   and Germany", raw material holding of 228 days and WIP of 112 days in FY25.

"Manufactured components" are lumped with raw materials (Note 8). **INFERRED:** in-house sub-assemblies
are arguably WIP. The classification makes WIP look lower and raw material look higher; it does not
change the total.

**Counter-argument.** Pre-buying for a plant that commissions in September 2026 is a defensible use
of cash if the plant fills. The test is FY27: if inventory days fall back toward 180 as the plant
ramps, the build was timing. The finished-goods doubling (26.86 to 51.67) and the stores jump are the
parts that the capacity story does not explain.

### 4.3 Huron's inventory (ESTABLISHED, Huron SAS own FY26 accounts, image page 6, Note 14)

Raw material 36.11, WIP 19.38, stores 24.79, **finished goods "trading machines" 30.63** (Note 14.2:
"Vertical Machining Center"), total 110.91 (Mar-2025: 57.88). **INFERRED:** Huron holds Rs 30.63 cr of
vertical machining centres for resale. Jyoti India makes VMCs and sold Rs 92.46 cr to Huron in FY26
(AR FY26 p.83 Note 35). Stock bought from the parent and not yet sold on carries parent margin that
must be eliminated on consolidation.

### 4.4 What management has said on inventory (ESTABLISHED quotes, dated)

| Call date | Quote | What happened |
|---|---|---|
| 21-May-2024 (tr-2024-05, Page 16 of 17) | "inventory days has come down from 320 to 325 to a 236 days. And we are expecting to be a 160 days to 170 days in between in FY'25." | FY25: 181 days (revenue basis) |
| 14-Aug-2024 (tr-2024-08, Page 9 of 12) | "we are very confident that we will reach 170 days this year. We are on track right now." | Missed |
| 26-May-2025 (tr-2025-05, Page 6 of 15) | On negative CFO and rising receivables and other financial assets: "it happened in the last quarter and last month ... we have targeted positive cash flow in the end of this financial year of '26." | FY26 CFO +54.39 (met, narrowly) |
| 07-Aug-2025 (tr-2025-08, Page 13 of 17) | "we are going to touch in between 150 to 160 days over there." | FY26: 203 days. Missed by 40+ days |
| 11-Feb-2026 (tr-2026-02, Page 11 of 15) | "our overall inventory days we are reducing ... you will see quarter-on-quarter very significant improvement from the next year." | Inventory +29.5% in FY26 |
| 07-Aug-2026 (tr-2026-08, Page 6 of 22) | "the working capital in the inventory stage is drastically, let's say, improvement we will see. In terms of operating cash flow, we are expecting to very positively surprised" | Open. CMD guides FY27 CFO at "close to 50% of EBITDA" (Page 22 of 22) |

**ESTABLISHED:** the MD&A itself reports consolidated inventory turnover of 1.22x in FY26 vs 2.06x
in FY25 (AR FY26 p.24, pr. 44-45), yet labels the change "19%". (1.22 vs 2.06 is a 41% fall.)

---

## 5. Receivables: ageing, ECL, related parties

### 5.1 Ageing (consolidated, undisputed, considered good; ESTABLISHED)

| Bucket | Mar-2024 | Mar-2025 | Mar-2026 |
|---|---|---|---|
| Less than 6 months | 176.57 | 395.00 | 531.21 |
| 6 months - 1 year | 24.72 | 10.85 | 27.94 |
| 1 - 2 years | 11.96 | 47.76 | 12.00 |
| 2 - 3 years | 5.65 | 7.79 | 13.92 |
| More than 3 years | 33.98 | 30.43 | 34.22 |
| Gross (considered good) | 252.88 | 491.83 | 619.29 |
| ECL allowance on the above | (3.78) | (5.29) | (20.20) |
| Credit-impaired (disputed, fully provided) | 1.05 | 1.05 | 1.05 |
| **Net** | 249.10 | 486.54 | 599.10 |

Sources: FY25 AR p.90 Note 8 (pr. 176-177) for Mar-2024 and Mar-2025; AR FY26 p.100 Note 9 (pr. 196-197).

**Readings (INFERRED):**
- Growth vs revenue: receivables +95% in FY25 (revenue +36%), +23% in FY26 (revenue +15%).
- Over 6 months: 30.2% of gross (Mar-2024), 19.7% (Mar-2025), 14.2% (Mar-2026). The mix is getting
  younger because the book is growing fast, not because old debts are clearing.
- The "more than 3 years" bucket has sat at Rs 30-34 cr for three year-ends and is still classed
  "considered good". Total ECL of 21.25 covers 62% of it.
- Rs 47.76 cr sat in "1-2 years" at Mar-2025. A year later only Rs 13.92 cr is in "2-3 years", so
  about Rs 34 cr was collected, written off or re-aged. The ECL note does not show write-offs.
- ECL allowance movement +14.91 (6.34 to 21.25) against a P&L charge of 7.67 (AR FY26 p.107 Note 31).
  The ECL on "other receivables" of 3.28 disappeared (p.101 Note 13). Net unexplained difference about
  Rs 4 cr (UNVERIFIED cause; possibly FX or reclassification).
- The ECL table covers billed receivables only. **No ECL or ageing is disclosed for Rs 613.30 cr of
  unbilled revenue**, although policy says lifetime ECL applies to "all contract assets" (AR FY26 p.97).
- Mid-year vs year-end (ESTABLISHED, results filings): trade receivables Rs 354.18 cr at 30-Sep-2025
  vs 599.10 at 31-Mar-2026 (`res-2025-09` p.9). The year-end balance is inflated by March billing.

### 5.2 Related-party receivables (ESTABLISHED)

- Consolidated: only small promoter-group balances (Kiya Products 0.49; AR FY26 p.111 Note 35).
- **Standalone: Rs 118.89 cr receivable from Huron Graffenstaden SAS** (Mar-2025: 26.75; Mar-2024:
  76.07; Mar-2023: 43.85), against FY26 sales to Huron of 92.46 (AR FY26 p.84 standalone Note 35;
  FY25 AR p.72; FY24 AR p.86, Rs mn / 10). **INFERRED:** the receivable is 1.3 times a full year of
  sales, so Huron is not paying for the machines it buys. It is 21% of standalone receivables (555.38).
  It eliminates on consolidation, so it does not show in the consolidated ageing above.
- Huron's own receivables: Rs 126.66 cr (Huron SAS FY26 Note 15, image page 6), of which Rs 125.96 cr
  sits on the line "Trade Receivable outstanding for a period exceeding Six months from the date they
  were due for payment". **UNVERIFIED:** the sub-lines under that heading are blank, so this may be a
  template quirk rather than a true ageing. If it is a true ageing, nearly all of Huron's receivables
  are more than six months overdue.

### 5.3 Customer concentration (ESTABLISHED)

AR FY26 p.114 (pr. 224-225): revenue from the top customer Rs 470.66 cr (FY25: 326.07), 22.5% of
revenue; top five Rs 683.97 cr (FY25: 883.35). The same page says "The Company does not have any
significant credit risk exposure to any single counterparty" (p.113). **INFERRED:** one customer
supplying 22.5% of revenue is a concentration by any reading. The customer is not named. **UNVERIFIED**
whether it is the EMS customer the CMD names elsewhere (Tata Electronics, tr-2026-06 Page 7 of 19).

---

## 6. Customer advances and contract liabilities

### 6.1 Consolidated advances vs order book (ESTABLISHED inputs, INFERRED ratios)

| Date | Advances from customers | Income received in advance | Order book | Advances / order book | Unbilled revenue | Unbilled minus advances |
|---|---|---|---|---|---|---|
| Mar-2023 | 62.50 | - | n/a (3,315 at Sep-2023) | - | 131.01 | 68.51 |
| Mar-2024 | 25.15 | 3.50 | 3,438 | 0.73% | 162.25 | 133.60 |
| Mar-2025 | 60.31 | 3.40 | 4,346 | 1.39% | 528.55 | 464.84 |
| Mar-2026 | 81.12 | 5.09 | 4,732 | **1.71%** | 613.30 | **527.09** |

Sources: FY24 AR p.113 (Rs mn 625.00 / 251.52); FY25 AR p.94 Note 21; AR FY26 p.106 Note 22
(pr. 208-209); prospectus p.214 ("order book of Rs 33,153.26 million" at 30-Sep-2023).

**Answer to the question asked:** advances are rising slightly as a share of the order book (0.7%
to 1.7%), but from a level that is tiny against stated terms. The prospectus (p.69, risk factor 27)
says private customers pay "up to 30% of the purchase price at the time the order is placed" and the
balance "at the time of delivery ... prior to dispatch". At 30%, a Rs 4,732 cr book would carry about
Rs 1,400 cr of advances. The balance sheet carries Rs 81 cr. **INFERRED:** either the 30% term applies
to few orders, or orders are booked with little or no deposit. Either way, the company funds its
customers: net of advances, it carries Rs 527 cr of revenue it has earned under POC but not billed.

### 6.2 Huron's customer advances do not appear in the consolidated line (ESTABLISHED numbers; explanation INFERRED)

| Date | Huron SAS own books: "Advance received from Customers" | Consolidated advances minus standalone advances | Jyoti India "Advance to Suppliers" paid to Huron | Huron "Short term borrowings - Groupe JYOTI CNC" |
|---|---|---|---|---|
| Mar-2024 | 144.59 | 6.12 (25.15 - 19.03) | 130.94 | - |
| Mar-2025 | 136.96 | 15.06 (60.31 - 45.25) | 141.74 | nil |
| Mar-2026 | 46.80 | n/a | 170.62 | **101.96** |

Sources: `txt/co/huron-sas-fy25.txt` Note 8 (Rs 1,36,95,66,939 and 1,44,58,53,761); Huron SAS FY26
image page 4, Notes 6 and 8; standalone advances FY25 AR p.68; Jyoti India related-party balances
AR FY26 p.84, FY25 AR p.72, FY24 AR p.86 (Rs mn 1,309.37 / 10).

**INFERRED:** most of what Huron called "advances from customers" in FY24 and FY25 was money from its
own parent. (The label "Groupe JYOTI CNC" in Huron's Note 6 is not defined in the accounts; Jyoti SAS
appears separately on the same note, so it very likely means Jyoti CNC Automation Limited, but that is
UNVERIFIED.) The amounts track Jyoti India's "advance to suppliers" to Huron within a few crore. In
FY26, Huron reclassified about Rs 102 cr of it as a short-term borrowing "From Partners: Groupe JYOTI
CNC", while Jyoti India still carries Rs 170.62 cr as a trade advance to a supplier. Jyoti India
bought only Rs 9.45 cr of materials from Huron in FY26 (Rs 11.04 cr in FY25). An "advance to a
supplier" worth 18 years of purchases, which the recipient books as a borrowing, is in substance a
loan. See Section 10.4.

**Three figures for one flow (ESTABLISHED inputs, UNVERIFIED which is right):** how much did Huron sell to
Jyoti India in FY26?
- CMD, 29-May-2026 (tr-2026-06 Page 17 of 19), asked how much of Huron's revenue is supplied to Jyoti:
  "INR105 crores."
- Standalone related-party note (AR FY26 p.84): purchases of raw material from Huron Rs 9.45 cr, other
  expense 2.96, no machine purchases.
- Consolidation arithmetic (INFERRED, Section 10.1): about Rs 27 cr.
Either the related-party note is incomplete, or the Rs 170.62 cr "advance to supplier" has almost no
purchases behind it.

An alternative reading, that Huron's advances were netted against its POC contract assets on
consolidation, does not fit: the consolidated unbilled figure equals the sum of the two entities'
gross unbilled figures (Section 3.1), so nothing was netted.

---

## 7. FY26's positive CFO: what drove it

### 7.1 The drivers (ESTABLISHED inputs, INFERRED attribution)

CFO moved from (105.43) to 54.39, a swing of Rs 159.82 cr. Where it came from:

| Driver | FY25 | FY26 | Effect on the swing |
|---|---|---|---|
| "Assets" build (mostly unbilled revenue and receivables) | (563.33) | (192.41) | **+370.92**. The main cause: unbilled revenue grew 84.75 instead of 366.30 |
| Liabilities build | 75.28 | 148.85 | +73.57 |
| Inventory | (34.49) | (265.49) | (231.00) |
| Operating profit before working capital | 503.88 | 521.70 | +17.82 |
| Taxes paid | (86.77) | (125.35) | (38.58) |
| Customs seizure | - | (32.91) | (32.91) |

**INFERRED:** FY26 CFO turned positive mainly because the POC unbilled balance stopped growing as fast
(part of that is the Rs 67 cr Huron POC reversal in Q4, Section 10.2, which cut revenue and the
unbilled balance together). It did not turn positive because customers paid faster or inventory fell.

**Parent vs group (INFERRED):** standalone CFO was Rs 102.74 cr (AR FY26 p.22); consolidated CFO before
the seizure was Rs 87.30 cr. The Rs 15 cr gap is roughly the French sub-group's own operating cash burn
as consolidated. The parent's funding of France (loan 131.90, advance to Huron +28.88, receivable from
Huron +92.14) sits in the standalone operating and financing lines and eliminates on consolidation.

### 7.2 The liability build of Rs 148.85 cr (ESTABLISHED balance sheet lines, AR FY26 p.91, p.105-106)

| Liability | Mar-2025 | Mar-2026 | Change |
|---|---|---|---|
| Trade payables | 410.11 | 509.76 | +99.65 |
| Statutory dues | 15.27 | 51.36 | **+36.09** |
| Advances from customers | 60.31 | 81.12 | +20.81 |
| Payable to employees | 36.01 | 54.08 | +18.07 |
| Income received in advance | 3.40 | 5.09 | +1.69 |
| Other financial liabilities (expenses payable, capex creditors) | 34.61 | 11.57 | (23.04) |
| Provisions (current and non-current) | 21.60 | 25.84 | +4.24 |

**Is it a payables stretch? Mostly no (INFERRED).** Payables on purchases: FY25 410.11 / 895.35 x 365 =
167 days; FY26 509.76 / 1,177.11 x 365 = 158 days (purchases from AR FY26 p.106 Note 26). Payables grew
in line with purchases. Note 38 says "The average credit period taken to settle trade payables is about
140 days" (AR FY26 p.114).

**What does look like deferral (INFERRED):**
- Statutory dues more than tripled (+36.09). The composition is not disclosed. CARO says the company is
  "generally regular" in depositing dues (AR FY26 p.63, clause VII A).
- Interest on delayed payment of income tax rose to Rs 5.80 cr from 1.68 (AR FY26 p.107 Note 29).
  **INFERRED:** interest of that size under sections 234B / 234C of the Income-tax Act, 1961 implies a
  sizeable advance-tax shortfall during FY26 (AY 2026-27). Paying tax late is a cheap source of cash;
  it is also a sign of intra-year strain.
- The capex creditors reduction (21.68 to 4.81, AR FY26 p.105 Note 21) is inside operating
  liabilities. That understates CFO slightly; it should sit in investing.

### 7.3 Year-end seasonality (ESTABLISHED, results filings)

| | 30-Sep-2024 | 31-Mar-2025 | 30-Sep-2025 | 31-Mar-2026 |
|---|---|---|---|---|
| Trade payables | about 280 (Rs mn 2,779.05 non-MSME) | 410.11 | 324.95 | 509.76 |
| Trade receivables | 256.06 | 486.54 | 354.18 | 599.10 |
| Other financial assets (mostly unbilled) | - | 538.16 | 673.82 | 624.38 |

Sources: `res-2024-09` p.9 (Rs mn); `res-2025-09` p.9; AR FY26 p.91. H1 FY26 CFO was 13.15 (`res-2025-09`
p.10), so H2 contributed 41.24. The H2 liability build was about Rs 240 cr (148.85 for the year less
(91.67) in H1). **INFERRED:** March is loaded with purchases, billing and payables every year. The
year-end cash position depends on this pattern.

### 7.4 One-offs and financing tools searched for

- **Customs seizure (ESTABLISHED).** Rs 32.91 cr shown as an operating outflow and as "Balance with Bank
  (Under Regulatory Seizure)" in other current assets at 31-Mar-2026 (AR FY26 p.92, p.101 Note 14). CFO
  before it: Rs 87.30 cr. **INFERRED timing problem:** the company's Regulation 30 filing dated
  12-Apr-2026 (`txt/co/litigation-12apr2026.txt`) says the authorities acted "Over this week" and dates
  the letter and news reports to 11-Apr-2026, after the balance sheet date. Under Ind AS 10 that is a
  non-adjusting event. Treating 31-Mar-2026 cash as seized understates FY26 CFO and cash; it is
  conservative for FY26 but wrong in principle. Huron's own accounts show "Judicial seizure" of **Rs
  41.57 cr** (Huron SAS FY26 image page 6, Note 18), about EUR 4.0 mn at the year-end rate, against Rs
  32.91 cr (EUR 3.02 mn "at present", AR FY26 p.87) in the consolidated accounts. **UNVERIFIED:** the
  reason for the Rs 8.66 cr difference.
- **Bill discounting, factoring, channel finance, supplier finance: not found** in the FY24-FY26 annual
  reports, the result filings or the three Infomerics rationales. That is "not found", not "absent".
  The FY26 policy note says the Ind AS 7 / Ind AS 107 supplier-finance amendments "did not have any
  material impact" (AR FY26 p.97), but gives no quantitative disclosure. Letters of credit and bank
  guarantees outstanding rose to 176.78 from 115.43 (AR FY26 p.108 Note 33). **UNVERIFIED** whether
  any trade payables are LC-backed (usance LCs are a form of supplier credit).
- Buyer's credit (Rs 20.23 cr) and packing credit (Rs 25.99 cr) existed at Mar-2024 and were nil by
  Mar-2025 (FY25 AR p.93 Note 16B).
- **Promoter bridge loans within the year (ESTABLISHED).** Jyoti International LLP (promoter entity)
  lent Rs 197.57 cr and was repaid Rs 200.96 cr during FY26; Rs 133.69 cr and 144.49 cr in FY25. Interest
  paid to it: 3.25 (FY26) and 4.42 (FY25). Year-end balance: nil (AR FY26 p.111 Note 35). **INFERRED:**
  at an 8-10% rate the average balance was roughly Rs 30-45 cr. The year-end balance sheet does not show
  the company's reliance on promoter money during the year.
- **Unnamed unsecured lender (ESTABLISHED).** "Loans and Advances From Others (Current)", unsecured,
  Rs 62.74 cr at Mar-2025 (Mar-2024: 16.76; Mar-2026: 1.96) (FY25 AR p.93; AR FY26 p.103 Note 17B). The
  lender is not named. **UNVERIFIED** who it was.

---

## 8. Debt: back to Rs 850 cr two years after an IPO that repaid Rs 475 cr

### 8.1 Split at 31-Mar-2026 (ESTABLISHED, AR FY26 p.103-104 Note 17A/17B, pr. 202-205)

| Facility | Entity | Type | Mar-2026 | Mar-2025 |
|---|---|---|---|---|
| Union Bank of India term loan (1Y MCLR + 0.25%, to Sep-2033) | India | Term (capex) | 266.80 | - |
| Axis Finance term loan (to Nov-2032) | India | Term (capex) | 95.51 | - |
| ICICI Bank and UBI small term loans | India | Term | 3.72 | 0.26 |
| Union Bank of India CC (limit 250) | India | Working capital | 143.00 | 197.98 |
| SBI CC (limit 110) | India | Working capital | 55.32 | - |
| Axis Bank CC (limit 50) | India | Working capital | 25.00 | - |
| Axis Bank Euro term loan (3M Euribor + 3.00%, to Jan-2031) | France | Term | 101.89 | - |
| HDFC Bank Euro term loan | France | Term | - | 102.34 |
| SBI Euro working capital (EUR 15 mn, fully drawn) | France | Working capital | 156.43 | - |
| HDFC Bank Euro working capital (EUR 15 mn) | France | Working capital | - | 133.31 |
| Unsecured from others / related parties | - | - | 1.96 | 62.95 |
| Vehicle loans, interest accrued | - | - | 3.81 | 0.30 |
| **Carrying total** | | | **849.71** | **496.88** |

Facility lines sum to about 853.4 before effective-interest adjustments (processing fees of 2.71 were
paid in FY26, AR FY26 p.92). Interest exposure: EUR floating 260.37, INR floating 585.62, fixed 3.73
(p.104).

**By entity (INFERRED, cross-checked):** India standalone 589.35 (non-current 322.25 + current 267.10,
AR FY26 p.22 standalone MD&A, pr. 40-41). France 260.36 (849.71 less 589.35), which matches Euro floating
debt of 260.37 and Huron's own books (SBI Rs 155.98 cr and long-term Rs 95.03 cr, Huron SAS FY26 image
pages 3-4). Mar-2025: India 198.45 (Infomerics 09-Jul-2025 p.6 financial table, "Total Debt"), France 298.43.
Mar-2024: India 92.19 (same source), France about 211.6.

**By purpose (INFERRED):** term debt 467.92 (India 366.03, France 101.89); working capital 379.75
(India 223.32 of Rs 410 cr sanctioned, France 156.43 of 156.43 sanctioned, i.e. fully drawn).

**France's debt is guaranteed by India (ESTABLISHED).** Standby letters of credit and letters of comfort
Rs 264.34 cr (AR FY26 p.108 Note 33); CARO shows security given to subsidiaries of 100.83 in FY26 and
264.34 outstanding (AR FY26 p.63). Jyoti India therefore stands behind essentially all of Huron's bank
debt.

### 8.2 Why debt came back (INFERRED from the cash flow statements)

From 31-Mar-2024 to 31-Mar-2026, gross debt rose Rs 545.93 cr (303.78 to 849.71). Over FY25 and FY26:
CFO (51.04), capex (633.05), finance cost paid (107.83), cash run down by 249.47 (302.34 to 52.87).
The capex was always going to need funding. The reason it needed debt is that two years of operating
cash flow were nil. Infomerics says so directly (10-Feb-2026, p.3, capex section): the expansion was "earlier
proposed to be funded by the internal accruals. However, at a later stage the management decided to
avail the term debt so that the internal accruals will be available for the working capital purpose."

The CMD's account on 29-May-2026 (tr-2026-06 Page 11 of 19): "close to INR300 crores is the debt has
been incurred on our capacity expansion ... Only working capital has increased only INR45 crores". That
matches the cash flow lines (non-current +307.67, current +45.16, AR FY26 p.92). It leaves out two
things. First, the capex needed debt because accruals went into working capital (Infomerics). Second,
the standalone company lent Rs 131.90 cr to Jyoti SAS in FY26 (AR FY26 p.84) and shows "loan of Rs
(142.11) Crores given" in its financing cash flow (AR FY26 p.22 standalone MD&A). **INFERRED:** about a
third of India's Rs 391 cr of new borrowing in FY26 matches money sent to France.

The IPO also earmarked Rs 360 cr for "long-term working capital" (CARE monitoring agency report,
`txt/co/mar-2024-03.txt`). That was spent in FY24-FY25 and the company still needed to borrow.

### 8.3 Interest cost

| Period | Consolidated finance cost | of which interest on borrowings | Standalone finance cost |
|---|---|---|---|
| FY24 | 89.72 | 67.32 | 65.78 |
| FY25 | 42.08 | 25.25 | 17.36 |
| FY26 | 69.84 | 48.90 | 53.47 |
| Q1 FY26 | 12.18 | - | 6.85 |
| Q2 FY26 | 14.19 | - | 8.53 |
| Q3 FY26 | 23.64 | - | 18.68 |
| Q4 FY26 | 19.83 | - | 19.41 |
| **Q1 FY27** | **24.34** | - | **20.01** |

Sources: AR FY26 p.107 Note 29; FY25 AR p.94-95; `res-2025-06`, `res-2025-09`, `res-2025-12`,
`res-2026-03`, `res-2026-06` (quarterly P&L tables). Huron's own finance cost FY26: Rs 19.85 cr (Huron
SAS FY26 image page 2), 28% of the group's.

**Q1 FY27 doubling (INFERRED):** consolidated finance cost 2.0 times Q1 FY26; standalone 2.9 times. The
Union Bank term loan was sanctioned in September 2025 and drawn from Q3 (Rs 218 cr by 15-Dec-2025,
Infomerics 10-Feb-2026 p.3; 266.80 by March). Interest is not capitalised on the new plant: the CMD says
"we have fully booked into cost over here" (07-Aug-2026, tr-2026-08 Page 7 of 22). That is conservative
for profit, though Ind AS 23 makes capitalisation on a qualifying asset mandatory, not optional.
Annualised, Q1 FY27 finance cost is about Rs 97 cr, about 11.5% of year-end gross debt. That is above the
loan rates disclosed (Euribor-linked and MCLR-linked). **UNVERIFIED:** whether debt rose within Q1 FY27
(the CMD said on 07-Aug-2026, Page 21 of 22, "from March and today's level is almost same") or whether
LC, SBLC and bank charges are heavy. Interest cover per MD&A fell to 7.54x from 11.14x (AR FY26 p.24).

### 8.4 CARO contradiction on stock statements to banks (ESTABLISHED)

- CARO clause (ii)(b), standalone (AR FY26 p.62-63): "differences were noticed in the quarterly stock
  statements submitted to the banks. However, looking to the size and volume of the operations, the same
  are considered to be immaterial and hence no reporting is required."
- Schedule III note, consolidated (AR FY26 p.115, Note 43 ii) and standalone (p.87): "The quarterly
  returns or statements of current assets filed by the company with banks are in agreement with the books
  of accounts."
The two statements cannot both be true. CARO 2020 asks the auditor to report whether the statements
agree and, if not, the details. The auditor noted differences and then did not quantify them.

---

## 9. Other income FY26: mostly paper forex gains

### 9.1 Composition (ESTABLISHED, AR FY26 p.106 Note 25, pr. 208-209)

| Item | FY26 | FY25 |
|---|---|---|
| Interest income | 21.87 | 8.51 |
| Foreign exchange fluctuation gain (net of loss) | **43.39** | 5.39 |
| Gain on sale / fair valuation of investments | 0.42 | 0.46 |
| Gain on sale of PPE | - | 0.02 |
| Others | (5.20) | 0.10 |
| **Total** | **60.48** | **14.48** |

No government grant and no liability write-back appears in Note 25.

**Share of PBT (INFERRED):** other income is 12.9% of FY26 PBT (60.48 / 467.19); the forex gain alone
9.3%. The cash flow statement deducts **unrealised** forex of Rs 57.60 cr as non-cash (AR FY26 p.92),
more than the whole net forex gain in the P&L. So the FY26 forex gain is unrealised revaluation, not
cash. Standalone other income was Rs 54.18 cr (AR FY26 p.66), so almost all of it arises in India.

### 9.2 Where the forex gain comes from (INFERRED)

- The euro strengthened from about Rs 92.3 (EUR 15 mn = Rs 138.48 cr at Mar-2025) to about Rs 104.3
  (EUR 15 mn = Rs 156.43 cr at Mar-2026) (AR FY26 p.104 Note 17B).
- The FX exposure table (AR FY26 p.113) shows euro "Loans & Advances Given (Including Interest and
  Guarantee Commission)" of Rs 193.84 cr plus USD Rs 67.71 cr, and euro trade receivables of Rs 120.15
  cr. These are, in the main, Jyoti India's balances with Jyoti SAS and Huron (Section 10.4).
- On 07-Aug-2025 (tr-2025-08, Page 6 of 17) the CMD said the Q1 FY26 gain was "a forex gain came over here in terms
  of debtors and receivables".
- The consolidated OCI shows a translation **loss** of Rs 18.01 cr (AR FY26 p.92). A P&L gain on the
  parent's euro claims on the subsidiary, alongside an OCI loss on translating the subsidiary, is the
  pattern you get when intra-group euro balances are revalued through profit.

**Policy judgement that flatters (INFERRED):** under Ind AS 21.15 and 21.32, a monetary item owed by a
foreign operation whose settlement is "neither planned nor likely to occur in the foreseeable future" is
part of the net investment, and in consolidated accounts its exchange differences go to OCI, not profit.
CARO (AR FY26 p.63, clause III C) says of the loan to the subsidiary: "there is no stipulation of
repayment of principal or interest". The accrued interest receivable of Rs 90.44 cr has also not been
paid. If these balances are part of the net investment, some of the Rs 43.39 cr forex gain belongs in
OCI, and FY26 consolidated PBT is overstated by that amount. **UNVERIFIED:** the exact amount; it
depends on the currency and dates of each balance.

**Counter-argument:** the company may intend repayment, the loan carries interest, and part of the gain
is on genuine trade receivables from third parties. Ind AS 21 leaves this to judgement.

**The reversal has begun (ESTABLISHED):** Q1 FY27 consolidated other income fell to Rs 3.98 cr from
20.50 (`res-2026-06` p.7); the CMD cites an unrealised forex **loss** of about Rs 10 cr in Q1 FY27
(07-Aug-2026, tr-2026-08 Page 4 of 22), against an analyst's note of a Rs 20 cr gain a year earlier
(Page 8 of 22).

**Unexplained item (UNVERIFIED):** standalone "interest and commission income" was Rs 16.43 cr (AR FY26
p.67), including interest on the loan to Jyoti SAS (3.82) and guarantee commission (2.14) that should
eliminate on consolidation. Yet consolidated interest income is higher, at Rs 21.87 cr. I could not
find what the subsidiaries add.

---

## 10. Huron Graffenstaden (France)

### 10.1 Huron's share of the group, FY26

| Measure | Huron / France | Group | Share | Source |
|---|---|---|---|---|
| Revenue, subsidiary group (gross, incl. intra-group) | 263.86 | 2,093.13 | - | AR FY26 p.90 other-matter paragraph |
| Revenue, Huron SAS own books | 243.92 (FY25 253.43) | - | - | Huron SAS FY26 image p.2 |
| Increment consolidation adds over standalone (consolidated less standalone) | 144.12 | 2,093.13 | 6.9% | INFERRED: 2,093.13 - 1,949.01. Not Huron's revenue: standalone already includes Rs 92.46 cr sold to Huron, which consolidation removes |
| Huron sub-group external revenue (estimate) | about 236.58 | 2,093.13 | **about 11%** | INFERRED: eliminations = 1,949.01 + 263.86 - 2,093.13 = 119.74; less India-to-Huron 92.46 leaves Huron-to-India about 27.28; 263.86 - 27.28 = 236.58 |
| Net profit, subsidiary group as consolidated | **(56.65)** (FY25 +6.68) | 336.00 | drags PAT by 14% vs standalone 391.25 | AR FY26 p.115 Note 38.2 |
| Profit, Huron SAS own books | **(80.16)** (FY25 +8.69) | - | - | Huron SAS FY26 image p.2 |
| Inventory | 110.91 | 1,165.97 | 9.5% | Huron image p.6; AR p.100 |
| Unbilled revenue | 147.82 | 613.30 | 24.1% | Section 3.1 |
| Gross debt | about 260.36 | 849.71 | **30.6%** | Section 8.1 |
| Finance cost | 19.85 | 69.84 | 28.4% | Huron image p.2; AR p.107 |
| Total assets, subsidiary group | 789.85 (FY25 566.32; FY24 408.85) | 3,615.33 | 21.8% gross | AR FY26 p.90; FY25 AR p.78; FY24 AR p.95 (Rs mn / 10) |
| Net assets, Jyoti SAS sub-group | **(111.05)** (FY25 (53.55)) | 2,001.33 | negative | AR FY26 p.114 Note 38.1 |

**Goodwill:** none. The 2007 acquisition left a **capital reserve** on consolidation of Rs 47.56 cr
(FY25: 40.28), a bargain-purchase credit, not goodwill (AR FY26 p.103 Note 16). **UNVERIFIED:** why a
capital reserve from a 2007 acquisition moved by Rs 7.28 cr in FY26; FX is the likely reason but it is
not explained.

**Growth without revenue (INFERRED):** the subsidiary group's total assets nearly doubled in two years
(408.85 to 789.85) while its revenue stayed flat at about Rs 255-264 cr. The money went into the
Illkirch capacity expansion (Huron CWIP of Rs 108.76 cr at Mar-2025, capitalised in FY26), POC
unbilled revenue, inventory and receivables.

**Loss figures do not agree (UNVERIFIED):** Huron SAS's own accounts show a loss of Rs 80.16 cr; AOC-1
shows Huron's loss as EUR 7.82 mn (AR FY26 p.31), which is about Rs 78 cr at any rate near Rs 100 per
euro; the consolidated share of the whole subsidiary group is a loss of Rs 56.65 cr. Jyoti SAS itself
shows a profit of EUR 1.10 mn in AOC-1, which may be intra-group interest. The gap of about Rs 20-24 cr
between Huron's own loss and the group figure is not explained anywhere I could find. Note also that
Huron SAS's Indian-format accounts are signed on 22-Aug-2026, almost three months after the
consolidated accounts were approved on 29-May-2026.

Q1 FY27: subsidiaries' revenue Rs 32.21 cr, loss Rs 30.07 cr (`res-2026-06`, consolidated review
report, other-matter paragraph).

### 10.2 The French investigation and the revenue reversal (ESTABLISHED)

- Regulation 30 filing, 12-Apr-2026 (`txt/co/litigation-12apr2026.txt`): the French customs
  intelligence directorate and other authorities opened an investigation into Huron and some employees
  over "export controls and export-documentation of machinery considered to be of dual-use"; the
  director general was restricted from his duties; bank accounts of about EUR 4.0 mn and two residential
  properties of Jyoti SAS were seized; a formal judicial investigation was opened. Allegation as stated
  by the company: "exporting certain machines with dual-use technology in violation of European Union
  laws". Huron "refutes the allegations".
- Q4 FY26: Huron reversed Rs 67 cr of revenue previously recognised under POC, "based on the assessment
  of our local auditors for Huron and as a matter of prudence" (CMD, 29-May-2026, tr-2026-06 Page 4 of
  19). He put the margin hit at about Rs 40 cr (Page 7 of 19). The MD&A describes it as "the reversal of
  revenue recognition has lowered the revenue of subsidiary" (AR FY26 p.23).
- Q1 FY27: Huron moved to recognising revenue on dispatch where export licences are uncertain. "in Huron
  we have moved away from our accounting method, which led to lower revenue recognition in Q1 FY27"
  (07-Aug-2026, tr-2026-08 Page 4 of 22). Unrecognised revenue of about Rs 35 cr in Q1 FY27 (Page 7).
  With the Q4 FY26 reversal, about Rs 100 cr on "7 to 8 machines" awaits licences (Page 21 of 22).
- **ESTABLISHED absence:** the Q1 FY27 result notes (`res-2026-06`, Notes 1-8) do not mention any change
  in Huron's revenue recognition, although the CMD calls it a change in accounting method and quantifies
  it. Ind AS 8 requires disclosure of a change in accounting policy or estimate.
- A new step-down subsidiary, Huron Shanghai Limited (China), had share capital subscribed on
  29-Jun-2026 (`res-2026-06`, consolidated review report, paragraph 4). The CMD says Huron's export
  customers are "all into China, Turkey. So these are all our sensitive areas" (tr-2026-08 Page 21 of 22).
- On 29-May-2026 (tr-2026-06 Page 15 of 19), asked about an alleged re-export channel to Russia during
  2022-2024, the CMD said: "we have never exported anything. The machines come from France to there to
  here -- to Russia there." and "all the machines, the Jyoti has been full capabilities and Jyoti only
  has dispatched at '22, '23 there. Then after we have not exported to Russia at all there."
  **UNVERIFIED:** the transcript is garbled and I cannot tell what the CMD meant; the words are quoted as
  filed. No finding is made about any export to Russia. Nothing in the filings establishes any breach.

### 10.3 Accounting for the investment: going-concern warning, no impairment (ESTABLISHED)

- Standalone auditor's Emphasis of Matter (AR FY26 p.60, pr. 116-117): Note 42 "indicates that the
  subsidiary company has accumulated losses and its net worth has been eroded ... These conditions along
  with other matters set forth in Note 42, indicate the existence of material uncertainty that may impact
  the subsidiary company's ability to continue as a going concern. However, the financial statements of
  the subsidiary company have been prepared on going concern basis and accordingly carrying value
  investments, loans and other recoverable are not impaired".
- Standalone Note 42 (AR FY26 p.87): investment Rs 341.60 cr and loans and advances Rs 160.11 cr in
  Jyoti SAS; no impairment because recoverable amount rests on "future discounted cash flows of the
  subsidiary ... and also considering the management's commitment towards the strategic nature of
  investments ... and its renowned brand value".
- **ESTABLISHED defect in the consolidated accounts:** the consolidated auditor's Emphasis of Matter
  (AR FY26 p.89, pr. 174-175) refers to "Note 40 of the accompanying Consolidated Financial Statements
  regarding the ongoing judicial investigation". Consolidated Note 40 (p.115) is the routine
  "balances ... are subject to confirmation" note, and consolidated Note 41 says "No subsequent event has
  been observed". I found no note on the investigation anywhere in the consolidated notes (pages 93-115).
  The consolidated cash flow cites "(Refer note 5)" for the seizure; consolidated Note 5 is Investments
  (p.100). The consolidated accounts therefore carry the seizure and the reversal without the disclosure
  the auditor points to. The EoM paragraph also contains a stray fragment ("Our opinion is not qualified
  in respect of this matter.and recoverable for the reasons stated in the said Note.").

### 10.4 Total exposure of Jyoti India to the French sub-group, 31-Mar-2026

| Item | Rs cr | Source (AR FY26) | In Note 42's impairment text? |
|---|---|---|---|
| Investment in Jyoti SAS | 341.60 | p.84 standalone Note 35; p.74 Note 5 | Yes |
| Loan to Jyoti SAS (Rs 131.90 cr lent in FY26) | 160.11 | p.84 | Yes |
| Interest and guarantee commission receivable from Jyoti SAS | 90.44 | p.84; p.75 | No |
| Trade receivables from Huron | 118.89 | p.84 | No |
| "Advance to Suppliers" paid to Huron | 170.62 | p.84 | No |
| **Funded exposure** | **881.66** | | 501.71 covered |
| SBLC and letters of comfort for subsidiaries' bank lines | 264.34 | p.108; p.63 CARO | No |
| **Funded plus contingent** | **1,146.00** | | |

**INFERRED:** funded exposure equals 35.9% of standalone net worth (2,454.12, AR FY26 p.66); with the
guarantees, 46.7%. The impairment reasoning in Note 42 names only Rs 501.71 cr of it. Rs 379.95 cr of
receivables and advances sit outside that reasoning, and the auditor's EoM says "loans and other
recoverable are not impaired" without quantifying them. The sub-group's net assets are negative (111.05)
and Huron lost Rs 80 cr in FY26 and Rs 30 cr in Q1 FY27.

**CARO contradictions on the loans (ESTABLISHED, AR FY26 p.63):**
- Clause III C: "In respect of the interest-bearing loan given to subsidiary, there is no stipulation of
  repayment of principal or interest."
- Clause III F: "The Company has not granted any loans or advances in the nature of loans either
  repayable on demand or without specifying any terms or period of repayment during the year." A loan
  with no stipulated repayment is exactly what clause III(f) asks to be reported.
- Clause III A and C: "the Company has not granted any advances in the nature of loans". **INFERRED:**
  a Rs 170.62 cr "advance to supplier" against FY26 purchases of Rs 9.45 cr from that supplier, which
  the supplier records as a short-term borrowing from "Groupe JYOTI CNC" (Rs 101.96 cr, Huron SAS FY26
  image page 4, Note 6; the label is not defined, UNVERIFIED that it means the listed company), is an
  advance in the nature of a loan in substance.

**Deferred tax on subsidiary losses (ESTABLISHED, AR FY26 p.105 Note 19):** the consolidated deferred
tax computation includes a deferred tax asset of Rs 21.57 cr "On Loss Available on Subsidiaries Books"
(FY25: 17.76). **INFERRED:** recognising a tax asset on the losses of a subsidiary whose going concern
the auditor questions requires convincing evidence of future taxable profit there (Ind AS 12.35). None is
given.

### 10.5 Earlier Huron rescue (ESTABLISHED; current status UNVERIFIED)

The prospectus (PDF p.25 and p.47) records a FY23 exceptional gain of Rs 30.45 cr from a waiver of
Huron's debt, and says: "The creditor has agreed to waive the debt only on the condition that if and when
the financial condition of Jyoti SAS and Huron Graffenstanden SAS improves, the debt will be reinstated."
It also says the waiver was recorded "as a part of contingent liabilities". Huron's FY24 accounts show a
"Capital restructuration" of Rs 223.09 cr credited to reserves (`huron-sas-fy25.txt`, Note 2). The
prospectus also listed a corporate guarantee of Rs 79.14 cr for the step-down subsidiary at
30-Sep-2023; the standalone FY25 report shows it at Rs 81.20 cr for Mar-2024 and nil for Mar-2025, while
the SBLC line rose from 54.13 to 167.00 (FY25 AR p.70). **UNVERIFIED:** I found no separate line for the
conditional reinstatement of the Rs 30.45 cr waiver in the FY24, FY25 or FY26 contingent-liability
notes (FY24 AR p.116; FY25 AR p.70; AR FY26 p.108). It may have been folded into another line, released,
or dropped.

---

## 11. Signs of revenue-recognition stretch

### 11.1 Quarter-end loading (ESTABLISHED quarterly figures, INFERRED shares)

| Consolidated revenue | Q1 | Q2 | Q3 | Q4 | Year | Q4 share |
|---|---|---|---|---|---|---|
| FY24 | 208.13 | 302.28 (derived) | 377.92 | 450.13 | 1,338.47 | 33.6% |
| FY25 | 361.84 | 430.67 | 449.51 | 575.68 | 1,817.70 | 31.7% |
| FY26 | 410.17 | 507.90 | 575.90 | 599.16 | 2,093.13 | 28.6% |
| Q1 FY27 | 508.47 | | | | | |

Sources: `res-2024-06` p.6, `res-2024-12` p.7 (Rs mn / 10), `res-2025-03` p.13, `res-2025-06` p.6,
`res-2025-09` p.8, `res-2025-12` p.6, `res-2026-03` p.13, `res-2026-06` p.7. Standalone Q4 share: FY25
32.8% (529.10 of 1,615.03), FY26 30.7% (598.70 of 1,949.01).

**Reading:** the Q4 share is falling and is normal for Indian capital goods. Not a red flag on its own.
The sharper signal is the March build of receivables and payables (Section 7.3) and the CMD's own
explanation for FY25's negative CFO: "it happened in the last quarter and last month" (26-May-2025,
tr-2025-05 Page 6 of 15).

### 11.2 Other signs checked

| Test | Result | Label |
|---|---|---|
| Unbilled revenue from POC | Rs 613.30 cr, 29% of revenue, growth concentrated in FY25 (Section 3) | ESTABLISHED |
| Auditor's KAM describes point-in-time; policy and MD&A say over time | Section 3.3 | ESTABLISHED |
| Huron POC revenue reversed (Rs 67 cr) after an external event; method changed in Q1 FY27 without a note | Section 10.2 | ESTABLISHED |
| Bill-and-hold | No disclosure found. Not found is not absent | UNVERIFIED |
| Installation and commissioning income | Rs 86.26 cr in FY26 vs 44.28 in FY25, +95% (AR FY26 p.106 Note 24.2) against machine sales +16% | ESTABLISHED; cause not explained |
| Huron "Sale of Service" | Rs 62.69 cr in FY25 vs 7.71 in FY24 (`huron-sas-fy25.txt` Note 18) for a machine builder | ESTABLISHED; cause not explained |
| Top customer | Rs 470.66 cr, 22.5% of revenue (Section 5.3) | ESTABLISHED |
| Year-end receivables < 6 months (531.21) vs Q4 revenue (599.16) | Most of Q4 billing is uncollected at year-end | INFERRED |

---

## 12. Reporting-quality defects (one finding, many instances)

All ESTABLISHED unless marked.

1. KAM (point in time) vs policy and MD&A (over time), AR FY26 p.59, p.88 vs p.21, p.23, p.97.
2. Consolidated EoM cites "Note 40" for the Huron investigation; consolidated Note 40 is a routine
   balance-confirmation note and Note 41 says no subsequent event (AR FY26 p.89, p.115). No Huron note in
   the consolidated notes. The cash flow cites "note 5" (Investments) for the seizure (p.92).
3. The consolidated EoM contains a stray fragment, "Our opinion is not qualified in respect of this
   matter.and recoverable for the reasons stated in the said Note." (p.89).
4. Consolidated balance sheet, P&L, cash flow and notes all say "See Accompanying notes to Standalone
   Financial Statements" (p.91, p.92, p.115).
5. The consolidated KAM on PPE cites "total additions to property, plant and equipment was Rs 138.93
   Crores" and CWIP "as per standalone financial statements" (p.89). **INFERRED:** these are standalone
   figures inside the consolidated report; consolidated cash capex was Rs 323.22 cr.
6. "847.75 Cr (March 31, 2025, 2433.93Cr)" of borrowings secured (p.104); the FY25 figure was 433.93.
7. CARO (ii)(b) says stock statements to banks differed from the books; the Schedule III note says they
   agree (Section 8.4).
8. CARO III C says the subsidiary loan has no repayment stipulation; CARO III F says no such loans were
   granted (Section 10.4).
9. MD&A labels the fall in inventory turnover from 2.06x to 1.22x as "19%" (p.24). It is 41%.
10. Note 26 uses closing raw material of Rs 791.18 cr; Note 8 shows raw material of Rs 759.90 cr (p.106
    vs p.100). **UNVERIFIED** cause of the Rs 31.28 cr difference; opening stock (544.17) agrees.
11. Standalone Note 41 shows nil R&D expenditure for FY26 (p.87), while the tax reconciliation claims an
    "Additional Tax Benefit for Reasearch & Development Expenditure" of Rs 4.08 cr (p.108).
12. Note 38 says "no significant credit risk exposure to any single counterparty" (p.113) while one
    customer is 22.5% of revenue (p.114).
13. FY24 auditor's report, dated 18-May-2024, says the audit trail was "enabled on 18-08-2024" (FY24 AR
    p.96).
14. Corrigenda: FY24 annual report reissued because Annexure B (internal financial controls report) to
    the standalone audit report "was missed" (`txt/co/corrigendum-ar-fy24.txt`, letter of 26-Sep-2024);
    FY25 reissued for errors in Notes 33.2 and 37 (`corrigendum-ar-fy25.txt`).
15. Q1 FY27 result notes are silent on the Huron revenue-method change the CMD quantifies (Section 10.2).
16. Brickwork kept the company in "Issuer Not Cooperating" on 20-May-2025 "on account of inadequate
    information received from the entity" (as reported in Infomerics 21-Apr-2026, p.3).

**Why it matters (INFERRED):** any one of these is a typo. Sixteen, including two contradictions inside
the auditor's own CARO report and an Emphasis of Matter that points to a note that does not exist, say
the close process and the audit review are not operating at the standard the balance sheet now needs.
The auditor relies entirely on another auditor and an "independent chartered accountant" for the French
numbers (AR FY26 p.90).

---

## 13. Earnings quality score: 3 / 10

| Factor | Effect | Weight in my score |
|---|---|---|
| 3-year CFO (99.29) vs PAT 802.87; CFO minus capex (846.63) | Profit not converting | Heavy negative |
| Unbilled POC revenue +482 cr over three years = 60% of 3-year PAT; no Ind AS 115 disclosures; KAM contradicts policy | Profit recognised ahead of billing, basis unexplained | Heavy negative |
| FY26 PBT includes Rs 43.39 cr forex gain (57.60 unrealised), arguably OCI under Ind AS 21.32 | About 9-12% of PBT is paper | Negative |
| Rs 882 cr funded exposure to a loss-making, investigated subsidiary; no impairment; going-concern EoM | Balance sheet risk that would hit profit | Negative |
| Raw material and finished goods build; repeated missed inventory guidance | Working capital consumption | Negative |
| DTA on subsidiary losses 21.57 | Small, aggressive | Mild negative |
| FY26 CFO positive; ECL provision raised sharply (6.34 to 21.25); payables days not stretched; no factoring found | Some genuine improvement | Positive |
| Interest not capitalised on the new plant; seizure charged to CFO | Conservative choices | Positive |

A 3 rather than a 2 because the underlying India business shows real volume (5,550 machines in FY26,
tr-2026-06 Page 11 of 19), real capacity being built, and a first positive CFO year. A 3 rather than a 5
because more than half of three years' profit sits in an unbilled, undisclosed POC balance, and the
auditor's own description of the revenue policy does not match the policy.

---

## 14. The single most important unresolved question

**How much of the Rs 613.30 cr unbilled revenue (India Rs 465.48 cr, Huron Rs 147.82 cr) sits on
contracts that meet Ind AS 115.35(c), how old is it, and how much of the 31-Mar-2026 balance had been
invoiced and collected by 30-Sep-2026?**

If it is converting, the FY25-FY26 cash gap is timing and the CMD's FY27 guidance (CFO at about 50% of
EBITDA, tr-2026-08 Page 22 of 22) is plausible. If it is rolling or ageing, part of three years' profit
has not been earned in the Ind AS 115 sense, and Huron's Rs 67 cr reversal is the first instalment rather
than a one-off. The H1 FY27 balance sheet (due with Q2 FY27 results, around November 2026) is the first
data point: watch Note 13 "Unbilled Revenue Receivable" and other financial assets.

The second question is the balance sheet one: what is the recoverable value of Rs 882 cr of funded
exposure (plus Rs 264 cr of guarantees) to the French sub-group, with negative net assets, an open
judicial investigation and losses of Rs 87-110 cr over FY26 and Q1 FY27 (consolidated share vs Huron's own books).

---

## 15. Findings ranked by materiality

**F1. More than half of three years' profit sits in unbilled POC revenue whose basis is not disclosed.**
- Claim: Rs 482 cr of the Rs 803 cr three-year PAT is an increase in unbilled revenue; true receivable
  days are 211, not 104.
- Evidence: Section 3.1 (AR FY26 p.101 Note 13; FY25 AR p.91; FY24 AR p.107; prospectus p.328); policy AR
  FY26 p.97; KAM p.88 vs FY25 AR p.77; no Ind AS 115.114-120 disclosures in pp.96-115.
- Label: numbers ESTABLISHED; the Ind AS 115.35(c) doubt INFERRED.
- Why it matters: it is the direct answer to "profits not turning into cash". If the contracts do not
  qualify for over-time recognition, reported profit is brought forward.
- Counter: long-cycle, customer-specific high-end machines can qualify. The rebuttal cannot be tested
  without contract terms or ageing, which the company does not give.

**F2. Jyoti India has Rs 882 cr funded, plus Rs 264 cr guaranteed, in a French sub-group with negative
net assets, a Rs 80 cr loss, a judicial investigation and a going-concern warning; none of it impaired.**
- Evidence: Section 10.3-10.4 (AR FY26 p.60, p.63, p.84, p.87, p.108, p.114; Huron SAS FY26 pages 2, 4).
- Label: ESTABLISHED amounts; that Rs 380 cr of it is outside Note 42's impairment reasoning is
  ESTABLISHED from the note's wording.
- Why it matters: 36% of standalone net worth (47% with guarantees). An impairment would not touch
  consolidated cash, but the guarantees and the loans already do: about a third of India's FY26 new
  borrowing matches money sent to France (INFERRED).
- Counter: Huron has a real order book, a doubled plant, and management says the investigation is
  industry-wide and has not stopped operations. The DCF may support the carrying value. The auditor
  accepted it. But the DCF inputs are not disclosed, and Q1 FY27 lost another Rs 30 cr.

**F3. The consolidated accounts lack the Huron disclosure the auditor's Emphasis of Matter points to.**
- Evidence: AR FY26 p.89 (EoM cites Note 40), p.115 (Note 40 and 41 text), p.92 ("note 5").
- Label: ESTABLISHED.
- Why it matters: the most material event of the year, a post-balance-sheet seizure and investigation
  that also drove a Q4 revenue reversal, is missing from the consolidated notes; Note 41 says no
  subsequent event.
- Counter: the standalone Note 42 and the Regulation 30 filing do disclose it, so the market knew. That
  does not cure the consolidated accounts.

**F4. About Rs 43-58 cr of FY26 PBT is unrealised forex, much of it probably on intra-group euro balances
that have no repayment terms.**
- Evidence: Section 9 (AR FY26 p.92, p.106, p.113; CARO p.63 III C).
- Label: amounts ESTABLISHED; the Ind AS 21.32 treatment INFERRED; the exact amount UNVERIFIED.
- Why it matters: 9-12% of PBT; already reversing (Q1 FY27 forex loss of about Rs 10 cr).
- Counter: repayment may be intended and interest accrues; part of the gain is on third-party
  receivables.

**F5. A Rs 170.62 cr "advance to supplier" to Huron is, in substance, a loan.**
- Evidence: AR FY26 p.84 (advance 170.62; purchases from Huron 9.45); Huron SAS FY26 page 4 Note 6
  ("Groupe JYOTI CNC" Rs 101.96 cr under short-term borrowings); CARO p.63 ("not granted any advances in
  the nature of loans"); Section 6.2.
- Label: amounts ESTABLISHED; characterisation INFERRED.
- Why it matters: it keeps subsidiary funding out of "loans", out of investing cash flow and out of CARO
  loan reporting, and it depresses standalone CFO.
- Counter: it may be a genuine prepayment for Huron-built machines that Jyoti resells in India. The CMD
  said Huron supplied "INR105 crores" to Jyoti in FY26 (tr-2026-06 Page 17 of 19). If so, the
  related-party note should show purchases of that size; it shows Rs 9.45 cr. The counterparty label
  "Groupe JYOTI CNC" in Huron's books is not defined; UNVERIFIED that it means the listed company.

**F6. Inventory growth is raw material, stores and finished goods, not long-cycle WIP; four rounds of
inventory-days guidance were missed.**
- Evidence: Section 4 (AR FY26 p.100; FY25 AR p.90; FY24 AR p.106; transcripts dated).
- Label: ESTABLISHED; the pre-build explanation is management's (07-Aug-2026).
- Counter: the new plant commissions in September 2026 and needs stock. FY27 is the test.

**F7. FY26's positive CFO came from a slower unbilled build and a liability build, not from better
collection.** Statutory dues tripled; interest on late income tax Rs 5.80 cr; promoter LLP lent Rs 198 cr
within the year and was repaid by year-end. Payables days did not stretch. No factoring found.
- Label: ESTABLISHED lines; attribution INFERRED.

**F8. Customer advances are 1.7% of the order book against a prospectus statement of "up to 30%" at order.**
- Evidence: Section 6.1 (AR FY26 p.106; prospectus p.69).
- Label: ESTABLISHED; inference that the company is financing customers INFERRED.

**F9. Debt: Rs 546 cr added since Mar-2024 because operating cash was nil for two years while capex ran
Rs 633 cr; 31% of group debt is in France and guaranteed by India; Q1 FY27 finance cost doubled.** CARO
contradicts the Schedule III note on stock statements filed with banks.
- Label: ESTABLISHED; interest-rate arithmetic INFERRED.

**F10. Reporting quality is weak across three annual reports (Section 12).** ESTABLISHED.

**Not a finding:** the quarter-end revenue share (33.6%, 31.7%, 28.6%) is falling and ordinary for the
industry.


## Addendum by the lead, 29-Sep-2026 (after verification, notes-14 V3)
Section 7.4's "INFERRED timing problem" is WITHDRAWN. AFP (11-Apr-2026) reports the bank accounts were
seized on 31-Mar-2026, the day of the custody, i.e. inside FY26. Charging the Rs 32.91 cr to FY26
operating cash flow is consistent with that date. The EUR 4.0 mn (Reg 30 letter; Huron's own books Rs
41.57 cr) versus EUR 3.02 mn (Rs 32.91 cr, consolidated) difference remains unexplained.

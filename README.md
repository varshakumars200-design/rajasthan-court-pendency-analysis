# Rajasthan Court Pendency Analysis

Which districts of Rajasthan have the most pending court cases, and what kind of cases are they?

![Dashboard](Dashboard%201.png)

**Live dashboard:** https://public.tableau.com/app/profile/varsha.kumar3626/viz/RajasthanCourtPendencyAnalysis/Dashboard1

## Key Findings
- Rajasthan has 25.57 lakh (2,556,843) pending cases across 44 court districts.
- Criminal cases are about 80% of the backlog.
- Jaipur Metro I and II together hold about 26% of all pending cases.
- The top 5 districts hold about 40%, and the top 10 about 57%.

## Tools Used
Python (Pandas), MySQL (XAMPP), Tableau Public

## Steps
1. Cleaned the data in Pandas: removed the "Total" row, fixed a district spelling, and validated that civil + criminal = total.
2. Created columns: criminal %, civil %, share of state total, district rank and pendency band.
3. Loaded the data into MySQL and wrote queries (top districts, civil vs criminal split, RANK(), share of total).
4. Built a Tableau dashboard with KPI cards, a treemap and charts.

## Files
- `rajasthan_court_pendency_analysis.ipynb`: cleaning and analysis
- `queries.sql`: MySQL queries
- `rajasthan.csv`, `cleaned_rajasthan.csv`: raw and cleaned data
- `court_db.sql`: database export
- `Dashboard 1.png`: dashboard screenshot

## Data Source
data.gov.in (Rajya Sabha): District-wise Number of Pendency of Cases in the Courts of Rajasthan, as on 19 January 2026.

## Limitations
This is a single-date snapshot of one state (44 court districts as listed in the dataset), so it does not show trends over time or compare with other states.

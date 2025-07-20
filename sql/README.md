# 📄 SQL Query Overview

This folder contains the SQL logic used to:

- Load the CSV data into DuckDB
- Create fan engagement tiers based on games watched
- Simulate churn (fans who watched fewer than 8 games)
- Aggregate KPIs for use in the Tableau dashboard

The main query calculates:

- Churn Rate (%)
- Average Games Watched
- Churned Fan Count
- Total Fans per Tier

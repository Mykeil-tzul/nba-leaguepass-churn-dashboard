# 🏀 NBA League Pass Churn Dashboard

**SQL + DuckDB + Tableau | Fan Engagement & Churn Storytelling**

This project analyzes simulated NBA League Pass subscriber data to uncover insights into fan engagement, churn behavior, and retention strategies. It simulates real-world business dashboards using SQL, Python, and Tableau.

---
## 📸 Dashboard Preview

> 🔍 This dashboard visualizes fan churn insights by engagement tier and cancel timing.
> 
![EFB41721-1003-4821-8B2B-61F5E4BF8585](https://github.com/user-attachments/assets/5a8459c0-b836-4436-8c89-66fe66abeeb3)


## 🔍 Key Insights

- 🟥 **100% churn rate** among low-engagement fans
- ⏱️ Most fans cancel around **Day 53**, indicating long trial behavior
- 🟩 **0% churn** for high-engagement fans — strong retention
- 📉 Churn peaks between **Days 40–80**, a critical retention window

---

## 🎯 Business Objective

This project simulates work done by an **Insights Analyst at Visa** or a **FanDuel Product Analyst**, with goals to:

- Diagnose **why and when** fans cancel
- Segment users by **engagement tier**
- Quantify **churn KPIs** and retention windows
- Present insights via an **executive-facing Tableau dashboard**

---

## ⚙️ Tools & Tech Stack

| Tool      | Purpose                          |
|-----------|----------------------------------|
| **DuckDB** | SQL queries on local CSV data     |
| **Python** | Data simulation & cleanup (`simulate_fans.py`) |
| **Tableau**| Executive dashboard & visual storytelling |
| **GitHub** | Version control, portfolio hosting |

---

## 📊 Metrics Tracked

| KPI                      | Description |
|--------------------------|-------------|
| `churn_rate`             | % of fans who cancel |
| `avg_days_to_cancel`     | Time until churn (days) |
| `games_watched_avg`      | Engagement proxy |
| `engagement_tier`        | Fan segmentation: Low, Med, High |
| `daily_churn_volume`     | # of cancellations per day |

---

## 🗂️ File Structure

nba-leaguepass-churn-dashboard/
├── data/ → simulated_fans.csv
├── notebooks/ → simulate_fans.py
├── sql/ → all analysis queries (DuckDB)
├── dashboard/ → Tableau dashboard (.twbx or .png)
└── README.md

---

## 🚧 Challenges Faced

- 🔁 Simulating realistic churn data with variation
- 🧮 Calculating rolling churn KPIs by tier
- ⚙️ Handling Tableau mislabels in tiered color groups
- ⚠️ GitHub push errors due to large files (>50MB)

---

## Data & Processing Steps

The data was sourced from a Kaggle dataset simulating NBA League Pass user behavior. To prepare the data for analysis and dashboarding, I followed these steps:

### 1. Data Import
- Loaded the dataset into Tableau using a CSV file format.

### 2. Data Cleaning
- Removed null entries and outliers in the `days_to_cancel` and `engagement_score` fields.
- Renamed columns for clarity (e.g., `user_id`, `days_to_cancel`, `engagement_tier`, `churn_status`).

### 3. Data Transformation (SQL)
Used Tableau’s calculated fields and SQL logic for the following:
- `Churn Rate %`: Calculated as `SUM(CASE WHEN churn_status = 'Churned' THEN 1 ELSE 0 END) / COUNT(user_id)`
- `Average Days to Cancel`: `AVG(days_to_cancel)` by engagement tier
- Engagement segmentation:
  ```sql
  CASE 
    WHEN engagement_score >= 8 THEN 'High'
    WHEN engagement_score BETWEEN 5 AND 7 THEN 'Medium'
    ELSE 'Low'
  END

### 4. KPI Cards & Visuals
	•	Created visualizations such as churn over time, average cancellation day, and churn rate by tier.
	•	Used filters and parameters to allow for dynamic insights.

---

## 🚀 Run Locally

```bash
# Launch DuckDB and run any SQL file
duckdb

-- Example query
SELECT * FROM read_csv_auto('data/simulated_fans.csv') LIMIT 5;


Made by Myke Tzul

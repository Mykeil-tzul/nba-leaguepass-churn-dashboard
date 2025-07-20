# 🏀 NBA League Pass Churn Dashboard

**SQL + DuckDB + Tableau | Fan Engagement & Churn Storytelling**

This project explores subscriber engagement and churn within NBA League Pass. Fans are segmented into engagement tiers (High, Mid, Low), and churn is simulated based on how many games they watched during the season.

The dashboard visualizes key KPIs like churn %, average games watched, and cancellation timing. This mirrors work done by Insights or Product Analysts at companies like **Visa**, **NBA**, and **FanDuel**.

---

## 🎯 Business Objective

This project simulates the role of a **Visa Insights Analyst** or **FanDuel Product Analyst** by answering:

- 🧠 Who is at risk of canceling?
- ⏱️ When do most fans cancel?
- 📊 How does engagement impact churn?
- 📈 What actions can reduce churn?

---

## 🔄 Data Pipeline Summary

- **Data Source**: Simulated NBA League Pass engagement data (CSV format)
- **Tech Stack**:
  - SQL (via DuckDB)
  - Python (for data generation)
  - Tableau (for visualization)
- **Cleaning Process**:
  - Removed incomplete records
  - Renamed fields, standardized team names
  - Filtered to 1 season for focused analysis
- **Churn Simulation**:
  - Fans who watched **< 8 games** = labeled as **"Churned"**
  - Engagement tiers created:
    - `Low` = < 8 games
    - `Mid` = 8–20 games
    - `High` = > 20 games

---

## 📊 SQL Logic Highlights

This project used DuckDB to segment fans, simulate churn, and calculate KPIs.

### 🧩 Simulate Churn
```sql
CASE 
  WHEN games_watched < 8 THEN 'Churned'
  ELSE 'Retained'
END AS churn_status

## 🧪 Engagement Tiers

CASE 
  WHEN games_watched < 8 THEN 'Low'
  WHEN games_watched BETWEEN 8 AND 20 THEN 'Mid'
  ELSE 'High'
END AS engagement_tier

## 📈 Churn Rate + Averages

SELECT 
  engagement_tier,
  COUNT(*) AS total_fans,
  AVG(games_watched) AS avg_games,
  SUM(CASE WHEN churn_status = 'Churned' THEN 1 ELSE 0 END) * 1.0 / COUNT(*) AS churn_rate
FROM fan_data
GROUP BY engagement_tier;

💡 Business Insights & Recommendations
🟥 Low-Tier Fans (100% churn)
Problem: Watched fewer than 8 games

Action: Target with highlight reels, welcome email flows, push reminders

🟧 Mid-Tier Fans (~45% churn)
Problem: Moderately engaged, but not loyal

Action: Offer bundle promos, team alerts, or rewards to retain

🟩 High-Tier Fans (0% churn)
Opportunity: Most loyal users

Action: Upsell with premium upgrades or referral bonuses

🔍 Key Insights
🟥 100% churn in Low-Tier group

⏱️ Average fan cancels around Day 53

📉 Churn spikes between Days 40–80

🟩 High-Tier fans retain best — show strongest product fit

📊 Metrics Tracked
KPI	Description
churn_rate	% of users who cancel
avg_days_to_cancel	Avg. time before churn
games_watched_avg	Engagement metric
engagement_tier	Low, Mid, High segmentation
daily_churn_volume	# of cancellations by day

⚙️ Tools & Tech Stack
Tool	Purpose
DuckDB	SQL queries on local CSV data
Python	Simulated fake NBA data (simulate_fans.py)
Tableau	Visual KPIs & dashboard storytelling
GitHub	Portfolio hosting & version control

🧠 What I Learned
How to simulate churn with Python and SQL

Segmenting users by behavior and calculating churn KPIs

Using Tableau to turn raw data into business insights

Structuring a portfolio-ready project with clear documentation

🔗 Real-World Alignment
This project mirrors real analyst workflows in:

🏀 NBA/League Pass: Understanding fan behavior to reduce churn

💳 Visa: Tracking cardholder drop-off and engagement patterns

🎮 FanDuel/DraftKings: Optimizing user retention through data segmentation

## 📸 Dashboard Preview

> 🔍 This dashboard visualizes fan churn insights by engagement tier and cancel timing.
> 
![EFB41721-1003-4821-8B2B-61F5E4BF8585](https://github.com/user-attachments/assets/5a8459c0-b836-4436-8c89-66fe66abeeb3)


📁 Files in This Repo
File	Description
data/simulated_fans.csv	Simulated engagement + churn data
sql/nba_churn_analysis.sql	DuckDB SQL queries
notebooks/simulate_fans.py	Python script to simulate users
dashboard/leaguepass_dashboard.twbx	Tableau workbook
README.md	Full project write-up

🗂️ File Structure
pgsql
Copy
Edit
nba-leaguepass-churn-dashboard/
├── data/
│   └── simulated_fans.csv
├── notebooks/
│   └── simulate_fans.py
├── sql/
│   └── nba_churn_analysis.sql
├── dashboard/
│   └── leaguepass_dashboard.twbx
├── images/
│   └── dashboard-preview.png
└── README.md

🚀 Run Locally
bash
Copy
Edit
# Load data with DuckDB
duckdb

-- Example
SELECT * FROM read_csv_auto('data/simulated_fans.csv') LIMIT 5;
🧠 Author
Myke Tzul
Data Analyst | Ex-Pro Hooper | SQL & Tableau Enthusiast
LinkedIn • GitHub

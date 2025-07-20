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

### Simulate Churn

```sql
CASE 
  WHEN games_watched < 8 THEN 'Churned'
  ELSE 'Retained'
END AS churn_status

🎯Engagement Tiers

CASE 
  WHEN games_watched < 8 THEN 'Low'
  WHEN games_watched BETWEEN 8 AND 20 THEN 'Mid'
  ELSE 'High'
END AS engagement_tier


📈 Churn Rate + Averages

SELECT 
  engagement_tier,
  COUNT(*) AS total_fans,
  AVG(games_watched) AS avg_games,
  SUM(CASE WHEN churn_status = 'Churned' THEN 1 ELSE 0 END) * 1.0 / COUNT(*) AS churn_rate
FROM fan_data
GROUP BY engagement_tier;

---

## 💡 Business Insights & Recommendations

### 🟥 Low-Tier Fans (100% churn)

**Problem**: Watched fewer than 8 games  
**Action**: Send welcome emails, highlights, and push notifications early in the season to re-engage these fans before they churn.

---

### 🟧 Mid-Tier Fans (~45% churn)

**Problem**: Moderately engaged, but not loyal  
**Action**: Introduce promos, team alert features, and mid-season offers to convert them into high-tier fans.

---

### 🟩 High-Tier Fans (0% churn)

**Opportunity**: Most loyal fans  
**Action**: Reward with premium features, referral programs, or early access perks to drive retention and advocacy.

---

## 🔍 Key Insights

- 🟥 **100% churn** among low-tier fans  
- ⏱️ Average churn occurs around **Day 53**  
- 📉 Churn spikes between **Days 40–80**  
- 🟩 High-tier fans show **0% churn** and strong engagement

---

## 📊 Metrics Tracked

| 📈 **KPI**             | 📌 **Description**                            |
|------------------------|-----------------------------------------------|
| `churn_rate`           | % of users who canceled                      |
| `avg_days_to_cancel`   | Avg. time before churn (in days)             |
| `games_watched_avg`    | Avg. number of games watched per user        |
| `engagement_tier`      | Segment label (Low, Mid, High)               |
| `daily_churn_volume`   | Number of churned users per day              |

---

## ⚙️ Tools & Tech Stack

| 🧰 **Tool**     | 🔍 **Purpose**                                     |
|----------------|-----------------------------------------------------|
| **DuckDB**     | SQL queries on local CSV files                      |
| **Python**     | Simulate NBA League Pass data (`simulate_fans.py`)  |
| **Tableau**    | Visual storytelling & executive dashboards          |
| **GitHub**     | Version control and project hosting                 |

---

## 🧠 What I Learned

- How to simulate churn and segment users using SQL + Python  
- How to model KPIs and business questions using DuckDB  
- How to turn raw data into visual stories using Tableau  
- How to align projects with roles in sports analytics and fintech

---

## 📸 Dashboard Preview

![Churn Dashboard](images/nba-leaguepass-dashboard.png)

---

## 🗂️ Project Structure

nba-leaguepass-churn-dashboard/
├── data/
│ └── simulated_fans.csv
├── notebooks/
│ └── simulate_fans.py
├── sql/
│ └── nba_churn_analysis.sql
├── dashboard/
│ └── leaguepass_dashboard.twbx
├── images/
│ └── nba-leaguepass-dashboard.png
└── README.md

# Launch DuckDB shell
duckdb

# Query your dataset
SELECT * FROM read_csv_auto('data/simulated_fans.csv') LIMIT 5;



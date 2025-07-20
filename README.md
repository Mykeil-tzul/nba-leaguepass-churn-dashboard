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

Engagement Tiers

CASE 
  WHEN games_watched < 8 THEN 'Low'
  WHEN games_watched BETWEEN 8 AND 20 THEN 'Mid'
  ELSE 'High'
END AS engagement_tier

CASE 
  WHEN games_watched < 8 THEN 'Low'
  WHEN games_watched BETWEEN 8 AND 20 THEN 'Mid'
  ELSE 'High'
END AS engagement_tier

Churn Rate + Averages

SELECT 
  engagement_tier,
  COUNT(*) AS total_fans,
  AVG(games_watched) AS avg_games,
  SUM(CASE WHEN churn_status = 'Churned' THEN 1 ELSE 0 END) * 1.0 / COUNT(*) AS churn_rate
FROM fan_data
GROUP BY engagement_tier;

## 💡 Business Insights & Recommendations

### 🟥 Low-Tier Fans (100% churn)
- **Problem**: Watched fewer than 8 games  
- **Action**: Target with highlight reels, welcome emails, and push notifications

### 🟧 Mid-Tier Fans (~45% churn)
- **Problem**: Moderately engaged, but not loyal  
- **Action**: Offer bundle promos, favorite team alerts, or retention rewards

### 🟩 High-Tier Fans (0% churn)
- **Opportunity**: Most loyal fans  
- **Action**: Upsell with premium features, referral bonuses, or loyalty rewards

---

## 🔍 Key Insights

- 🟥 100% churn rate among low-tier fans  
- ⏱️ Average fan cancels around **Day 53**  
- 📉 Churn peaks between **Days 40–80**  
- 🟩 High-tier fans are highly retained and engaged

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

| 🧰 **Tool**     | 🔍 **Purpose**                                |
|----------------|------------------------------------------------|
| **DuckDB**     | SQL queries on local CSV files                |
| **Python**     | Simulate NBA League Pass data (`simulate_fans.py`) |
| **Tableau**    | Visual storytelling & executive dashboards    |
| **GitHub**     | Version control and project hosting           |

---

## 🧠 What I Learned

- How to simulate churn and segment users using Python & SQL  
- Translating raw behavior into KPIs that drive business decisions  
- Designing an **executive-ready Tableau dashboard**  
- Building a polished, employer-facing GitHub project  

---

## 🔗 Real-World Alignment

This project simulates real analyst workflows at:

- 🏀 **NBA / League Pass** – Fan segmentation and re-engagement  
- 💳 **Visa** – Tracking cardholder churn and behavior trends  
- 🎮 **FanDuel / DraftKings** – Reducing churn through behavioral insights

---

## 📸 Dashboard Preview

> Tableau dashboard showcasing churn %, cancellation trends, and engagement breakdown:

![NBA League Pass Dashboard](images/dashboard-preview.png)

---

## 📁 Files in This Repo

| 📂 **File**                       | 📄 **Description**                            |
|----------------------------------|-----------------------------------------------|
| `data/simulated_fans.csv`        | Simulated fan dataset                         |
| `sql/nba_churn_analysis.sql`     | SQL queries for segmentation & KPIs           |
| `notebooks/simulate_fans.py`     | Python script to simulate user behavior       |
| `dashboard/leaguepass_dashboard.twbx` | Tableau workbook file                     |
| `images/dashboard-preview.png`   | Dashboard preview image                       |
| `README.md`                      | Full project documentation                    |

---

## 🗂️ File Structure

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
│ └── dashboard-preview.png
└── README.md

yaml
Copy
Edit


---

## 🚀 Run Locally

```bash
# Launch DuckDB and load the CSV
duckdb

-- Example query inside DuckDB shell
SELECT * FROM read_csv_auto('data/simulated_fans.csv') LIMIT 5;

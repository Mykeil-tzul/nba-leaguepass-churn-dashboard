# 🏀 NBA League Pass Churn Dashboard

**SQL + DuckDB + Tableau | Fan Engagement & Churn Storytelling**

This project explores subscriber engagement and churn within NBA League Pass. Fans are segmented into engagement tiers (High, Mid, Low), and churn is simulated based on how many games they watched during the season.

The dashboard visualizes key KPIs like churn %, average games watched, and cancellation timing. This mirrors work done by Insights or Product Analysts at companies like **Visa**, **NBA**, and **FanDuel**.

![Dashboard Preview](preview/dashboard.png)

---

## 🎯 Business Objective

This project simulates the role of a **Visa Insights Analyst** or **FanDuel Product Analyst** by answering:

- 🧠 Who is at risk of canceling?
- ⏱️ When do most fans cancel?
- 📊 How does engagement impact churn?
- 📈 What actions can reduce churn?

---

## 🔄 Data Pipeline Summary

- **Data Source**: Simulated NBA League Pass engagement data (CSV)
- **Tech Stack**:
  - SQL (via DuckDB)
  - Python (for data generation)
  - Tableau (for dashboarding)
- **Cleaning Process**:
  - Loaded CSV into DuckDB for SQL querying
  - Segmented users into 3 engagement tiers (High, Mid, Low)
  - Simulated churn: users who watched < 8 games = churned
  - Aggregated key metrics by segment

---

## 📊 Key Dashboard Features

- 📉 **Churn Rate by Segment**: Highlights risk level per tier
- ⏳ **Average Games Watched**: Usage insights per user group
- 📅 **Cancellation Timeline**: When are users most likely to churn?
- 🎯 **Segment Comparisons**: Mid vs Low vs High engagement

---

## 🧠 Business Insights

- Fans in the **Low Engagement** tier churn at a **100% rate**.
- Most churn occurs early in the season, indicating weak retention.
- **Mid-tier fans** show signs of value but are still at risk.
- **Retention tactics** like loyalty rewards or personalized content may reduce churn.

---

## 🛠️ Tools Used

| Tool     | Purpose                      |
|----------|------------------------------|
| DuckDB   | In-memory SQL querying       |
| Python   | Data simulation + formatting |
| Tableau  | KPI visualization            |
| GitHub   | Version control              |

---

## 📁 Project Structure

```plaintext
nba-leaguepass-churn-dashboard/
│
├── data/
│   └── league_pass_data.csv
│
├── preview/
│   └── dashboard.png
│
├── queries/
│   └── churn_analysis.sql
│
├── notebooks/
│   └── explore_engagement.ipynb
│
├── README.md
└── dashboard.twb

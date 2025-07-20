# 🏀 NBA League Pass Churn Dashboard

**SQL + DuckDB + Tableau | Fan Engagement & Churn Storytelling**

This project explores subscriber engagement and churn within NBA League Pass. Fans are segmented into engagement tiers (High, Mid, Low), and churn is simulated based on how many games they watched during the season.

The dashboard visualizes key KPIs like churn %, average games watched, and cancellation timing.

![EFB41721-1003-4821-8B2B-61F5E4BF8585](https://github.com/user-attachments/assets/5a8459c0-b836-4436-8c89-66fe66abeeb3)

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

### 📂 Data Processing Steps

1. Generated synthetic NBA League Pass engagement data (CSV)
2. Loaded data into DuckDB for SQL querying and exploration
3. Segmented fans into **engagement tiers** based on total games watched
4. Simulated **churn**: fans who watched fewer than 8 games were flagged as churned
5. Aggregated key metrics:
   - Churn Rate (%)
   - Avg. Games Watched per Tier
   - % of Users by Tier
6. Exported the cleaned dataset for visualization in Tableau
  - 
> **Note on Churn Simulation**:  
> For this project, *churn* is simulated based on NBA League Pass usage.  
> Fans who watched **fewer than 8 games** during the season were labeled as **churned**, representing disengaged subscribers.  
> This results in a **100% churn rate** for the 'Low Engagement' segment in this version.

## 🛠️ Challenges Faced

- Balancing simplicity with realistic churn simulation using limited variables
- Tableau filter design for intuitive storytelling across engagement segments

## 🔮 Future Improvements

- Add probabilistic churn model using logistic regression
- Include features like team loyalty, star player watch frequency, or social media sentiment
- Simulate real streaming behavior data instead of static CSV

## 🧪 Simulated Churn Logic
Churn was defined as fans who watched fewer than 8 games. This created a 100% churn rate for ‘Low’ engagement fans in this version.

💡 Future versions could include probabilistic churn across all tiers.
  
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



🏁

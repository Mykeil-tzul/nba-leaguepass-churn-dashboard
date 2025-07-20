🏀 NBA League Pass Churn Dashboard
SQL + DuckDB + Tableau | Fan Engagement & Churn Storytelling

This project analyzes simulated NBA League Pass subscriber data to uncover insights into fan engagement, churn patterns, and retention strategies. It combines SQL queries (DuckDB), visual storytelling in Tableau, and business-style KPIs to simulate a real-world data analytics project.

🔍 Key Insights
Fans with low engagement churn at a 100% rate

Most fans cancel around Day 53, suggesting a long decision cycle

High engagement fans showed 0% churn, indicating strong loyalty

Churn volume peaks between Days 40–80, showing a critical retention window

🧠 Business Objective
This project simulates the work of a Visa Insights Analyst or FanDuel Data Analyst, focused on:

Diagnosing why fans churn

Segmenting users by engagement tier

Quantifying churn windows and retention KPIs

Creating a compelling Tableau dashboard for execs or product teams

⚙️ Tools Used
SQL (DuckDB) — querying structured fan data for churn KPIs

Python — simulation and data cleanup (simulate_fans.py)

Tableau — interactive dashboard with metrics and churn heatmaps

GitHub — version control + portfolio publishing

📊 Metrics Tracked
Metric	Description
Churn Rate %	Total % of users who canceled
Avg Days Until Cancel	Average time before churn
Games Watched (Avg)	Proxy for fan engagement
Engagement Tier	Grouped fans by usage: Low, Medium, High
Churn Volume by Day	Visualized peak cancellation periods

📁 File Structure
├── data/
│   └── simulated_fans.csv
├── sql/
│   ├── churn_by_engagement.sql
│   ├── churn_metrics.sql
│   ├── time_to_cancel.sql
│   └── games_by_churn_status.sql
├── notebooks/
│   └── simulate_fans.py
├── dashboard/
│   └── Tableau workbook (.twbx or link)
├── README.md

📌 Dashboard Preview
Embed your Tableau public link or screenshot here
Example:

📂 Challenges Faced
🧮 Simulating realistic churn patterns for NBA fans

🔁 Aligning CSV fields for DuckDB SQL ingestion

📉 Making churn storytelling intuitive for non-technical stakeholders

⚠️ Tableau mislabeling “Engagement Tier” as * (fixed by dragging correct field to Color shelf)

🚀 Try It Yourself
# Open DuckDB shell
duckdb

# Query the data
SELECT * FROM read_csv_auto('data/simulated_fans.csv') LIMIT 5;

Or clone and explore:
git clone https://github.com/Mykeil-tzul/nba-leaguepass-churn-dashboard.git

💼 Project Type
Skill Demonstration: SQL, Tableau, storytelling, data simulation

Target Role: Data Analyst / Insights Analyst / Product Analyst

👤 Created By
Mykeil Tzul 🏀 x 📊 x 💡

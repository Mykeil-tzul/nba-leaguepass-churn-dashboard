-- Churn Rate by Favorite Team
SELECT 
    favorite_team,
    COUNT(*) AS total_fans,
    SUM(churned) AS churned_fans,
    ROUND(SUM(churned) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM read_csv_auto('data/simulated_fans.csv')
GROUP BY favorite_team
ORDER BY churn_rate_pct DESC;

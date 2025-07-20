-- Segment fans by how many games they watched
SELECT 
    CASE 
        WHEN watched_games < 8 THEN 'Low'
        WHEN watched_games BETWEEN 8 AND 15 THEN 'Medium'
        ELSE 'High'
    END AS engagement_tier,
    COUNT(*) AS total_fans,
    SUM(churned) AS churned_fans,
    ROUND(SUM(churned) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM read_csv_auto('data/simulated_fans.csv')
GROUP BY engagement_tier
ORDER BY churn_rate_pct DESC;

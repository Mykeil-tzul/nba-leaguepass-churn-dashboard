-- Average Games Watched by Favorite Team
SELECT 
    favorite_team,
    COUNT(*) AS total_fans,
    ROUND(AVG(watched_games), 2) AS avg_games_watched,
    SUM(churned) AS churned_fans,
    ROUND(SUM(churned) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM read_csv_auto('data/simulated_fans.csv')
GROUP BY favorite_team
ORDER BY avg_games_watched DESC;

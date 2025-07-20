-- Avg Games Watched by Churn Status (churned vs not)
SELECT 
    churned,
    COUNT(*) AS total_fans,
    ROUND(AVG(watched_games), 2) AS avg_games_watched
FROM read_csv_auto('data/simulated_fans.csv')
GROUP BY churned;

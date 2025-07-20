-- Avg Days Until Cancel for Churned Fans (DuckDB version)
SELECT
  ROUND(AVG(DATEDIFF('day', signup_date, cancel_date)), 2) AS avg_days_to_cancel
FROM read_csv_auto('data/simulated_fans.csv')
WHERE churned = 1;

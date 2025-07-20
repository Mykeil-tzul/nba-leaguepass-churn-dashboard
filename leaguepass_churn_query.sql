-- Load the CSV file into DuckDB (if not already loaded)
SELECT * 
FROM read_csv_auto('nba_leaguepass_data.csv');

-- Step 1: Classify fans by engagement level based on total games watched
SELECT
  *,
  CASE 
    WHEN games_watched >= 15 THEN 'High'
    WHEN games_watched BETWEEN 8 AND 14 THEN 'Mid'
    ELSE 'Low'
  END AS engagement_tier
FROM leaguepass_engagement;

-- Step 2: Simulate churn - fans who watched fewer than 8 games are considered churned
SELECT
  *,
  CASE 
    WHEN games_watched < 8 THEN 1 ELSE 0 
  END AS is_churned
FROM engagement_with_tiers;

-- Step 3: Aggregate KPIs by engagement tier
SELECT
  engagement_tier,
  COUNT(*) AS total_fans,
  AVG(games_watched) AS avg_games_watched,
  SUM(is_churned) AS churned_fans,
  ROUND(SUM(is_churned) * 100.0 / COUNT(*), 1) AS churn_rate_percentage
FROM fans_final
GROUP BY engagement_tier
ORDER BY engagement_tier;

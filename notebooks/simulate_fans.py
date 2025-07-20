import pandas as pd
import random
from datetime import datetime, timedelta

# List of NBA team codes
teams = ['LAL', 'GSW', 'BOS', 'MIA', 'NYK', 'PHI', 'DAL', 'MIL', 'PHX', 'DEN', 'MEM', 'SAC', 'CHI', 'ATL', 'HOU', 'TOR']

# Simulate fans
num_fans = 5000
fan_data = []

for i in range(1, num_fans + 1):
    signup = datetime(2023, 10, random.randint(1, 28))
    favorite = random.choice(teams)
    watched = random.randint(3, 20)

    churned = 1 if watched < 8 else 0
    cancel = signup + timedelta(days=random.randint(15, 90)) if churned else None

    fan_data.append({
        "fan_id": i,
        "favorite_team": favorite,
        "signup_date": signup.strftime("%Y-%m-%d"),
        "watched_games": watched,
        "churned": churned,
        "cancel_date": cancel.strftime("%Y-%m-%d") if cancel else None
    })

df = pd.DataFrame(fan_data)
df.to_csv('data/simulated_fans.csv', index=False)

print("✅ Simulated fan data saved to data/simulated_fans.csv")

UPDATE all_trips
SET day_of_week =
CAST(strftime('%w', started_at) AS INTEGER) + 1;
SELECT *,
ROUND(
    (julianday(ended_at) - julianday(started_at)) * 24 * 60,
    2
) AS ride_length_minutes
FROM all_trips
LIMIT 20;
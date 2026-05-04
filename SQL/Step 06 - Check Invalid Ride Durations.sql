SELECT COUNT(*) AS invalid_duration_rows
FROM all_trips
WHERE
(julianday(ended_at) - julianday(started_at)) <= 0;
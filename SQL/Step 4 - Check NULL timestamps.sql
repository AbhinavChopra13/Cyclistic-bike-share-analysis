SELECT COUNT(*) AS null_time_rows
FROM all_trips
WHERE started_at IS NULL
   OR ended_at IS NULL;
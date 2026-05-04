DELETE FROM all_trips
WHERE
(julianday(ended_at) - julianday(started_at)) <= 0;
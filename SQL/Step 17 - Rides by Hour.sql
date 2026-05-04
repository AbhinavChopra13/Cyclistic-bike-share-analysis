SELECT 
    strftime('%H', started_at) AS hour,
    member_casual,
    COUNT(*) AS total_rides
FROM all_trips
GROUP BY hour, member_casual
ORDER BY hour;
SELECT 
    member_casual,
    COUNT(*) AS total_rides
FROM all_trips
GROUP BY member_casual;
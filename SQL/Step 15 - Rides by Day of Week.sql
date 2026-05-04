SELECT 
    day_of_week,
    member_casual,
    COUNT(*) AS total_rides
FROM all_trips
GROUP BY day_of_week, member_casual
ORDER BY day_of_week;
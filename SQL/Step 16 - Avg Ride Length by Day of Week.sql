SELECT 
    day_of_week,
    member_casual,
    ROUND(AVG(ride_length), 2) AS avg_ride_length
FROM all_trips
GROUP BY day_of_week, member_casual
ORDER BY day_of_week;
SELECT 
    member_casual,
    ROUND(AVG(ride_length), 2) AS avg_ride_length
FROM all_trips
GROUP BY member_casual;
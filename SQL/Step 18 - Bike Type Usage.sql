SELECT 
    rideable_type,
    member_casual,
    COUNT(*) AS total_rides
FROM all_trips
GROUP BY rideable_type, member_casual;
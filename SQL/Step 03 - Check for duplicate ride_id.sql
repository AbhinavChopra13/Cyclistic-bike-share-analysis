SELECT 
    ride_id,
    COUNT(*) AS duplicate_count
FROM all_trips
GROUP BY ride_id
HAVING COUNT(*) > 1;
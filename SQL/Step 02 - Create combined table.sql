CREATE TABLE all_trips AS
SELECT * FROM "202501-divvy-tripdata"
UNION ALL
SELECT * FROM "202504-divvy-tripdata"
UNION ALL
SELECT * FROM "202505-divvy-tripdata"
UNION ALL
SELECT * FROM "202506-divvy-tripdata"
UNION ALL
SELECT * FROM "202507-divvy-tripdata"
UNION ALL
SELECT * FROM "202508-divvy-tripdata"
UNION ALL
SELECT * FROM "202509-divvy-tripdata"
UNION ALL
SELECT * FROM "202510-divvy-tripdata"
UNION ALL
SELECT * FROM "202511-divvy-tripdata"
UNION ALL
SELECT * FROM "202512-divvy-tripdata"
UNION ALL
SELECT * FROM "202602-divvy-tripdata"
UNION ALL
SELECT * FROM "202603-divvy-tripdata";
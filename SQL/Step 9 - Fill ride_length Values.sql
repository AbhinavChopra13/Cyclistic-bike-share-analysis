UPDATE all_trips
SET ride_length =
ROUND(
    (julianday(ended_at) - julianday(started_at)) * 24 * 60,
    2
);
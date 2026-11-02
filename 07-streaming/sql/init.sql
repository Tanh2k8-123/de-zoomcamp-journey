-- Local workshop target tables; this file does not clear existing data.
CREATE TABLE IF NOT EXISTS processed_events (
    PULocationID INTEGER,
    DOLocationID INTEGER,
    trip_distance DOUBLE PRECISION,
    total_amount DOUBLE PRECISION,
    pickup_datetime TIMESTAMP
);

CREATE TABLE IF NOT EXISTS processed_events_aggregated (
    window_start TIMESTAMP(3),
    PULocationID INTEGER,
    num_trips BIGINT,
    total_revenue DOUBLE PRECISION,
    PRIMARY KEY (window_start, PULocationID)
);

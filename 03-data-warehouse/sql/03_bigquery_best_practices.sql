-- Module 3 Unit 3 — BigQuery Best Practices
--
-- These are read-only examples. They may work in BigQuery Sandbox.

-- Anti-pattern: SELECT * may read many columns.
SELECT *
FROM `bigquery-public-data.new_york_citibike.citibike_stations`
LIMIT 100;

-- Better: select only the columns you need.
SELECT
  station_id,
  name
FROM `bigquery-public-data.new_york_citibike.citibike_stations`
LIMIT 100;

-- Good analytical pattern: aggregate before inspecting details.
SELECT
  COUNT(1) AS station_count
FROM `bigquery-public-data.new_york_citibike.citibike_stations`;

-- If querying a large partitioned table in a real project:
-- Always filter on partition date.
SELECT
  DATE(tpep_pickup_datetime) AS pickup_date,
  COUNT(1) AS trips
FROM `taxi-rides-ny.nytaxi.yellow_tripdata_partitioned`
WHERE tpep_pickup_datetime BETWEEN TIMESTAMP('2020-01-01') AND TIMESTAMP('2020-02-01')
GROUP BY pickup_date
ORDER BY pickup_date;

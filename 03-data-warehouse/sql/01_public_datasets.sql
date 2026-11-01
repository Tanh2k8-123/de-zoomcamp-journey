-- Query a small public dataset.
SELECT
  station_id,
  name
FROM `bigquery-public-data.new_york_citibike.citibike_stations`
LIMIT 100;

-- Example with count.
SELECT
  COUNT(1) AS station_count
FROM `bigquery-public-data.new_york_citibike.citibike_stations`;

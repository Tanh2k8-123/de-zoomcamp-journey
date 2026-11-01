-- Module 3 Unit 2 — Partitioning vs Clustering
--
-- NOTE:
-- These statements require a GCP project with a writable BigQuery dataset.
-- BigQuery Sandbox may not allow creating custom tables.

-- Create a non-partitioned table from an external table.
CREATE OR REPLACE TABLE `taxi-rides-ny.nytaxi.yellow_tripdata_non_partitioned` AS
SELECT *
FROM `taxi-rides-ny.nytaxi.external_yellow_tripdata`;

-- Create a table partitioned by pickup date.
CREATE OR REPLACE TABLE `taxi-rides-ny.nytaxi.yellow_tripdata_partitioned`
PARTITION BY DATE(tpep_pickup_datetime) AS
SELECT *
FROM `taxi-rides-ny.nytaxi.external_yellow_tripdata`;

-- Create a table partitioned by pickup date and clustered by vendor.
CREATE OR REPLACE TABLE `taxi-rides-ny.nytaxi.yellow_tripdata_partitioned_clustered`
PARTITION BY DATE(tpep_pickup_datetime)
CLUSTER BY VendorID AS
SELECT *
FROM `taxi-rides-ny.nytaxi.external_yellow_tripdata`;

-- Inspect partitions of a partitioned table.
SELECT
  table_name,
  partition_id,
  total_rows
FROM `taxi-rides-ny.nytaxi.INFORMATION_SCHEMA.PARTITIONS`
WHERE table_name = 'yellow_tripdata_partitioned'
ORDER BY total_rows DESC;

-- Compare bytes scanned by partitioned vs partitioned + clustered table.
SELECT COUNT(1) AS trips
FROM `taxi-rides-ny.nytaxi.yellow_tripdata_partitioned`
WHERE DATE(tpep_pickup_datetime) BETWEEN '2019-06-01' AND '2020-12-31'
  AND VendorID = 1;

SELECT COUNT(1) AS trips
FROM `taxi-rides-ny.nytaxi.yellow_tripdata_partitioned_clustered`
WHERE DATE(tpep_pickup_datetime) BETWEEN '2019-06-01' AND '2020-12-31'
  AND VendorID = 1;

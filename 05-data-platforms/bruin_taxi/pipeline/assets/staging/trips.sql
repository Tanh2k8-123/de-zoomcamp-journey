/* @bruin
name: staging.trips
type: duckdb.sql
depends:
  - ingestion.trips
materialization:
  type: table
@bruin */
select
    cast(trip_id as integer) as trip_id,
    cast(pickup_datetime as timestamp) as pickup_datetime,
    cast(pickup_location_id as integer) as pickup_location_id,
    cast(total_amount as decimal(18, 2)) as total_amount
from ingestion.trips
where trip_id is not null

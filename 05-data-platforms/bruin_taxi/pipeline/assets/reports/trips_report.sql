/* @bruin
name: reports.trips_report
type: duckdb.sql
depends:
  - staging.trips
materialization:
  type: table
@bruin */
select
    cast(pickup_datetime as date) as trip_date,
    pickup_location_id,
    count(*) as trip_count,
    sum(total_amount) as total_revenue
from staging.trips
group by 1, 2

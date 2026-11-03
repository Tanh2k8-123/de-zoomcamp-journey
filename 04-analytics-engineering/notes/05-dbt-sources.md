# Module 4 Unit 5 - dbt Sources

- A source declares an existing input table that models read; it does not download data or create the raw table.
- `setup_local_data.py` loads the taxi data into DuckDB before dbt reads it, and `sources.yml` only describes those tables.
- The local source is named `raw` in database `taxi_rides_ny` under schema `prod`, listing `green_tripdata` and `yellow_tripdata`.
- The `prod` schema name is only a namespace and does not mean dbt is running against a production target.
- `source('raw', 'green_tripdata')` takes the logical source name as its first argument, not the schema name, and compiles to a fully quoted three-part table path.
- Renaming the source to `nyc_taxi` means updating every `source()` call but does not move or rename the physical table.
- Naming a CTE `source` inside `with source as (...)` is unrelated to the dbt `source()` function.
- `dbt compile` renders SQL without materializing, while `dbt run` executes the model and creates or updates its relation.
- dbt can create a missing staging view but cannot read a missing raw table, so the raw load must happen first.

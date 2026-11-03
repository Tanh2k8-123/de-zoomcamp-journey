# Module 4 Unit 4 - dbt Project Structure

- `dbt_project.yml` holds project identity, profile name, model paths, and default materializations.
- The connection profile lives in `~/.dbt/profiles.yml`, outside the project, and must never be committed.
- `packages.yml` declares external packages, and `.gitignore` excludes logs, `target/`, `dbt_packages/`, downloaded data, and DuckDB files.
- Models are commonly organized into staging, intermediate, and marts layers.
- Staging reads sources with minimal cleaning, intermediate holds reusable unions and joins, and marts serve business-ready tables to dashboards and analysts.
- In the taxi project the raw `prod.yellow_tripdata` and `prod.green_tripdata` tables feed staging models, then `int_trips_unioned` and `int_trips`, then `fct_trips`, `dim_zones`, and `dim_vendors`.
- `macros/` holds reusable SQL helpers such as `safe_cast`, and `seeds/` holds small CSV lookup tables that dbt loads into the warehouse.
- `snapshots/` track historical changes when source tables overwrite rows, and tests are queries that fail when they return rows.
- Locally this course installs dbt-core with dbt-duckdb through uv and runs `dbt debug` against a DuckDB profile named `taxi_rides_ny`.

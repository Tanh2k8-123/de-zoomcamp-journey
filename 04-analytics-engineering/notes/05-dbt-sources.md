# Module 4 Unit 5 — dbt Sources

## What is a source?

- A source declares existing input tables used by dbt models.
- Source declarations describe where the data lives; they do not download data or create raw tables.
- In this project, `setup_local_data.py` loads taxi data into DuckDB before dbt reads it.

```text
setup_local_data.py -> raw tables in prod
sources.yml        -> declares the raw tables
staging SQL        -> reads sources and transforms data
dbt run            -> creates staging views in dev
```

## Source definition

File: `taxi_rides_ny/models/staging/sources.yml`.

The existing file supports BigQuery and DuckDB. Its effective local configuration can be summarized as:

```yaml
sources:
  - name: raw
    database: taxi_rides_ny
    schema: prod
    tables:
      - name: green_tripdata
      - name: yellow_tripdata
```

- `raw`: logical source name used in dbt code.
- `taxi_rides_ny`: DuckDB database name.
- `prod`: schema containing the raw tables; the name alone does not mean dbt is running with a production target.
- `tables`: existing input tables exposed through this source.

## Referencing a source

```sql
select * from {{ source('raw', 'green_tripdata') }}
```

After compilation in the local environment:

```sql
select * from "taxi_rides_ny"."prod"."green_tripdata"
```

The first argument is the logical source name, not the schema name. Renaming the source to `nyc_taxi` requires updating the call to `source('nyc_taxi', 'green_tripdata')`, but does not move or rename the physical table.

In `with source as (...)`, `source` is also a SQL CTE name. That CTE name is separate from the dbt `source()` function.

## Local workflow (WSL / Bash)

Run commands from the learning repo, because the DuckDB profile uses a relative database path:

```bash
cd /mnt/e/TuanAnh/Project/de-zoomcamp-2027/04-analytics-engineering/taxi_rides_ny

dbt debug
dbt deps
dbt compile --select stg_green_tripdata
cat target/compiled/taxi_rides_ny/models/staging/stg_green_tripdata.sql
dbt run --select stg_green_tripdata
dbt test --select stg_green_tripdata
```

- `dbt debug`: checks project and connection configuration.
- `dbt deps`: installs packages declared in `packages.yml`.
- `dbt compile`: renders Jinja into SQL without materializing the selected model.
- `dbt run`: executes model SQL and creates or updates the configured relation.
- `dbt test`: executes the selected data quality checks; it does not repair data.

Staging defaults to `view` in `dbt_project.yml`, so this model creates `dev.stg_green_tripdata` as a view. The raw table must already exist. dbt can create the output view when it is missing, but cannot read a missing raw table.

Inspect a few output rows after the run:

```bash
uv run --with duckdb python - <<'PY'
import duckdb

con = duckdb.connect('taxi_rides_ny.duckdb', read_only=True)
print(con.sql('''
    select vendor_id, pickup_datetime, total_amount
    from dev.stg_green_tripdata
    limit 5
''').fetchall())
con.close()
PY
```

## Data checks

The staging model declares `not_null` checks for `vendor_id` and `pickup_datetime`. A check finds rows with NULL in the tested column; zero violating rows means PASS. These checks cover the selected model and conditions, not every quality rule or all raw data.

## Next unit

dbt Models: use `ref()` to connect models, understand materializations, and follow the staging -> intermediate -> marts flow.

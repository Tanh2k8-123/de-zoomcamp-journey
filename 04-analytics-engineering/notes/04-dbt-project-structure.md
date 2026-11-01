# Module 4 Unit 4 — dbt Project Structure

## Main files and folders

```text
taxi_rides_ny/
├── dbt_project.yml
├── models/
│   ├── staging/
│   ├── intermediate/
│   └── marts/
├── macros/
├── seeds/
├── snapshots/
├── tests/
├── packages.yml
└── .gitignore
```

## Important files

- `dbt_project.yml`: project identity, profile name, model paths, default materializations.
- `~/.dbt/profiles.yml`: connection settings for dbt Core. This file stays outside the project and should not be committed.
- `packages.yml`: external dbt packages such as `dbt_utils` and `codegen`.
- `.gitignore`: ignore DuckDB files, downloaded data, logs, target, and dbt_packages.

## Models structure

dbt models are commonly organized into three layers:

```text
staging       -> source definitions and minimal cleaning from raw tables
intermediate  -> reusable intermediate transformations, unions, joins
marts         -> business-ready tables for dashboards and analysts
```

For the taxi project:

```text
raw tables:
  prod.yellow_tripdata
  prod.green_tripdata

staging:
  stg_yellow_tripdata
  stg_green_tripdata

intermediate:
  int_trips
  int_trips_unioned

marts:
  fct_trips
  dim_zones
  dim_vendors
```

## Other folders

- `macros/`: reusable SQL helper functions, for example `safe_cast`.
- `seeds/`: small CSV lookup tables loaded into the warehouse by dbt.
- `snapshots/`: used to track historical changes when source tables overwrite rows.
- `tests/`: data quality tests. A test fails if the test query returns rows.

## Local setup for this repo

```bash
cd /mnt/e/TuanAnh/Project/de-zoomcamp-2027/04-analytics-engineering/taxi_rides_ny

uv tool install dbt-core --with dbt-duckdb
mkdir -p ~/.dbt
nano ~/.dbt/profiles.yml
```

Use profile name:

```text
taxi_rides_ny
```

The profile uses DuckDB:

```yaml
dev:
  type: duckdb
  path: taxi_rides_ny.duckdb
  schema: dev
```

After loading raw taxi data into DuckDB:

```bash
dbt debug
```

Expected result:

```text
All checks passed!
```

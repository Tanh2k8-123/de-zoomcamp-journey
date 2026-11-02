# Module 4 Unit 6 — dbt Models

## What is a model?

- In this project, a SQL model is a `.sql` file describing a transformation with a SELECT query.
- SQL determines the output data; materialization determines how dbt stores and updates it.
- `dbt run` executes selected models. `dbt test` checks declared conditions on their data.

## source() vs ref()

```sql
-- Existing raw input declared in sources.yml
{{ source('raw', 'green_tripdata') }}

-- Output of another model
{{ ref('stg_green_tripdata') }}

-- A seed loaded from CSV
{{ ref('payment_type_lookup') }}
```

- `ref()` resolves the relation name and records a dependency in dbt's DAG.
- Use model names without the `.sql` extension.
- Reading staging through `ref()` reuses its renamed columns, type conversions, and filters instead of repeating the raw transformations.
- Dependencies determine execution order among selected resources; referencing a model does not automatically select it for execution.

## Project architecture

```text
prod.green_tripdata -> stg_green_tripdata --+
                                          +-> int_trips_unioned -> int_trips
prod.yellow_tripdata -> stg_yellow_tripdata +                         ^
                                                                    |
payment_type_lookup.csv -> payment_type_lookup ----------------------+

taxi_zone_lookup.csv -> taxi_zone_lookup -> dim_zones --+
                                                      +-> fct_trips
                                          int_trips ---+
```

- Staging: standardize source data.
- Intermediate: combine, enrich, and apply reusable transformations.
- Marts: serve business analysis with detailed facts, descriptive dimensions, and aggregate reports. A mart does not have to be aggregated.

The existing `fct_monthly_zone_revenue` model belongs in marts/reporting: it groups trips by pickup zone, month, and service type.

## Union and intermediate transformations

`int_trips_unioned` reads both staging models and uses `UNION ALL` to append rows without removing duplicates. Both sides select corresponding columns in the same order with compatible types. The model adds a Green/Yellow `service_type` label and supplies defaults for fields absent from the yellow source.

Example row counts for the January development dataset:

```text
Green:    630,830
Yellow: 7,667,565
Total:  8,298,395
```

`int_trips` then:

- Generates `trip_id` with `dbt_utils.generate_surrogate_key` from vendor, pickup timestamp, pickup location, and service type.
- LEFT JOINs `payment_type_lookup` to add a payment description, using `Unknown` when no description is found.
- Keeps one row per combination of those four fields using `row_number()` ordered by dropoff time and `QUALIFY ... = 1`.

The key and deduplication rule reflect the project's chosen grain; distinct real trips can share that combination. If ordering values tie, this ordering does not fully specify which row wins.

## Materializations

| Type | Behavior | Project example |
| --- | --- | --- |
| view | Stores a query definition; reads underlying data when queried | staging models |
| table | Rebuilds the stored query result when the model runs | intermediate models, dim_zones |
| incremental | Creates a table initially, then updates it using selected input rows | fct_trips |

`dbt_project.yml` defaults to views for staging and tables for intermediate/marts. The `config()` block in `fct_trips.sql` overrides that default with incremental materialization, `unique_key='trip_id'`, and merge strategy.

The incremental filter in this model is:

```sql
{% if is_incremental() %}
where trips.pickup_datetime > (select max(pickup_datetime) from {{ this }})
{% endif %}
```

- `this` refers to the current model's output relation.
- When the output table does not exist, the initial run processes the full query result.
- Subsequent incremental runs select timestamps strictly greater than the maximum already stored.
- This filter misses late-arriving older trips, rows equal to the maximum timestamp, and corrections to older trips. Incremental does not automatically detect all newly ingested data.

## Fact and dimension

- `dim_zones`: one row per location ID, with zone and borough descriptions.
- `fct_trips`: trip events and measures such as distance, duration, and amounts.
- `fct_trips` LEFT JOINs `dim_zones` twice: once for pickup, once for dropoff.
- Unique dimension keys prevent one matching trip from multiplying into several output rows.

## Commands (WSL / Bash)

```bash
cd /mnt/e/TuanAnh/Project/de-zoomcamp-2027/04-analytics-engineering/taxi_rides_ny

# Prefix + selects upstream models too; run does not load CSV seeds.
dbt run --select +int_trips_unioned

dbt seed --select payment_type_lookup
dbt run --select int_trips
dbt test --select int_trips

dbt seed --select taxi_zone_lookup
dbt run --select dim_zones
dbt test --select dim_zones --indirect-selection cautious

dbt run --select fct_trips
dbt test --select fct_trips
```

Create upstream models before running individual downstream models without `+`.

## Test selection issue

`dbt test --select dim_zones` can select its two column checks and two relationships checks referencing both `fct_trips` and `dim_zones`. If `fct_trips` does not exist yet, the relationships checks error.

Default eager indirect selection can include a test when any parent is selected. Cautious selection requires all of the test's parents to be selected:

```bash
dbt test --select dim_zones --indirect-selection cautious
```

This selects just the two dimension checks. Create `fct_trips` before running the relationships checks.

- FAIL: a test query executes and finds violating data.
- ERROR in this case: the test query cannot execute because a required table is missing.

Reference: [dbt test selection](https://docs.getdbt.com/reference/node-selection/test-selection-examples).

## Data quality considerations

The fact tests check key uniqueness, required non-null fields, service type values, and relationships for non-null location IDs. Passing these tests does not establish that every business value is correct.

Numeric columns without explicit precision/scale can produce a rounding warning. The current data tests do not verify rounding or preservation of numeric values; review numeric types separately.

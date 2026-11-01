# Module 3 Unit 2 — Partitioning vs Clustering

## Partitioning

Partitioning divides a table into smaller pieces so queries can read only relevant partitions.

BigQuery supports:

- time-unit column partitioning,
- ingestion-time partitioning,
- integer range partitioning.

Common granularity:

- daily is the default and often the best starting point,
- hourly is useful for high-volume data but can create too many partitions,
- monthly/yearly is useful when data is small but spread over a wide date range.

Important limit:

```text
A table can have at most 4000 partitions.
```

## Clustering

Clustering stores related rows close together by sorting within each partition.

Rules:

- up to 4 clustering columns,
- order matters: `CLUSTER BY a, b, c` sorts by `a`, then `b`, then `c`,
- clustering helps queries that filter or aggregate on clustered columns.

## When to use what

Use partitioning when:

- queries filter on one time-based or high-level column,
- you want predictable byte savings upfront,
- you want partition management such as deleting old partitions.

Use clustering when:

- queries filter on multiple columns,
- a column has high cardinality and partitioning would be too fine,
- more granularity is needed than partitioning alone provides.

Use both when:

- partition by date and cluster by common filters like `VendorID`, `payment_type`, or `PULocationID`.

## Cost rule

For small tables, especially under about 1 GB:

```text
partitioning and clustering may not help much
and can add metadata overhead
```

## BigQuery lesson from taxi data

Example:

```sql
PARTITION BY DATE(tpep_pickup_datetime)
CLUSTER BY VendorID
```

Meaning:

- partition by pickup date so June queries only read June partitions,
- cluster by `VendorID` so `WHERE VendorID = 1` reads less data inside each day partition.

## Databricks equivalent

If using Databricks/Delta instead of BigQuery, the closest concepts are:

```text
partitioning -> Delta partition columns
clustering   -> OPTIMIZE ... ZORDER BY
```

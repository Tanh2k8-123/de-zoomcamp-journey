# Module 3 Unit 4 — Internals of BigQuery

## High-level architecture

BigQuery is built around three important components:

```text
Colossus  = storage
Jupiter   = very fast network between storage and compute
Dremel    = distributed query execution engine
```

## Why storage/compute separation matters

BigQuery does not store and compute in one tightly coupled machine.

```text
Data lives in Colossus storage
Query execution lives on compute nodes
```

This means:

- storage cost scales with data size,
- compute cost scales with queries you run,
- you can grow storage cheaply,
- you only pay for compute when actually processing.

## Jupiter network

Jupiter is the high-speed internal network used to move data between storage and compute.

Why it matters:

- if network were slow, separating storage and compute would hurt query speed,
- Jupiter makes that architecture practical at scale.

## Columnar storage

BigQuery stores data by column, not by row.

Row-oriented:

```text
row1 = all columns
row2 = all columns
```

Column-oriented:

```text
column_a = values for all rows
column_b = values for all rows
```

Consequence:

```text
SELECT col_a, col_b reads only col_a and col_b
SELECT * may read every column
```

This is why `SELECT *` is expensive in BigQuery.

## Dremel execution tree

Dremel executes a query as a tree:

```text
root server
  -> mixers
    -> leaf nodes
      -> read data from storage
```

Example:

```sql
SELECT A, COUNT(B)
FROM T
GROUP BY A;
```

Dremel may split work:

1. leaf nodes count rows on their data slices,
2. mixers aggregate partial results,
3. root server aggregates and returns final result.

This is why BigQuery scales: it distributes pieces of the query across many workers.

## Why this explains best practices

- `SELECT *` is bad because columnar storage reads all columns.
- partitioning is good because whole partitions can be skipped.
- clustering is good because blocks inside partitions can be skipped.
- reducing data before JOIN is good because distributed joins are expensive.
- ORDER BY is expensive because final sorting requires coordination.

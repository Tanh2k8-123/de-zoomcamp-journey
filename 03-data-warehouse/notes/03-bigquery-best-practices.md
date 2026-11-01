# Module 3 Unit 3 — BigQuery Best Practices

## Core rule

Most BigQuery optimization serves one goal:

```text
Read less data.
```

Cost and performance are usually linked: queries that read fewer bytes are cheaper and faster.

## Cost reduction habits

1. **Avoid `SELECT *`**
   - BigQuery is columnar.
   - If you select only needed columns, BigQuery reads only those columns.
   - `SELECT *` can read all columns even if you only use one or two.

2. **Estimate cost before running**
   - Check the estimated bytes/price in the query editor.
   - Use `Query validator` or `dry run` when possible.

3. **Use partitioned/clustered tables**
   - Partition pruning skips whole partitions.
   - Clustering skips data blocks inside partitions.

4. **Be careful with streaming inserts**
   - They can create extra costs.
   - Batch loading is often cheaper.

5. **Materialize expensive intermediate results**
   - If a CTE is used many times, consider creating a physical table.
   - Then reuse the table in later steps.

6. **Use result caching**
   - Rerunning the same query may use cached results.
   - Do not disable cache unless comparing true scan bytes.

## Query performance habits

1. **Filter on partition/clustering columns**
   - If the query does not use those columns in `WHERE`, partitioning/clustering may not help.

2. **Denormalize analytical data**
   - Warehouses often reduce joins by keeping related fields together.

3. **Use nested/repeated fields when appropriate**
   - They keep related data in one table without too many joins.

4. **Filter before joining**
   - Reduce rows first, then join.

5. **Avoid oversharding**
   - Many tiny daily tables are often worse than one partitioned table.

6. **Be careful with external data sources**
   - Querying external data can be slower and more expensive than native BigQuery storage.

7. **Order last**
   - `ORDER BY` is expensive. Put it near the end of query logic.

8. **Optimize JOIN table order**
   - Put the largest table first, then the smaller tables.
   - This matches BigQuery execution behavior.

## Common anti-patterns

```text
SELECT *
FROM huge_table;

SELECT ...
FROM table_with_partition
WHERE unrelated_column = ...;

WITH repeated_logic AS (...)
SELECT ...
FROM repeated_logic, repeated_logic, repeated_logic;

JOIN
  huge_table a
  another_huge_table b
ON ...
```

## Better patterns

```text
Select only needed columns.
Filter on partitioned date.
Filter before join.
Materialize reused expensive intermediate results.
Use approximate functions when exact values are not required.
```

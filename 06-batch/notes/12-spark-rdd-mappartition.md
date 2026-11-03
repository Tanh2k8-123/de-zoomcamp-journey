# Module 6 Unit 12 - Spark RDD mapPartition

- RDD partition work is optional for ordinary analytical pipelines.
- mapPartitions processes an iterator for each partition rather than working per row.
- Expensive resources such as model loading can be initialized once per partition.
- A per-record transform repeats that setup cost on every row of the partition.
- Spark retries failed tasks, so partition code can execute more than once.
- External side effects written from partition code need to be idempotent.
- Materializing an unbounded partition into memory can exceed the executor heap.

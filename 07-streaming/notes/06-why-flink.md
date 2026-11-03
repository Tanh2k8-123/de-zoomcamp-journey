# Module 7 Unit 6 - Why Flink?

- Flink supplies stateful processing, event-time windows, parallelism, and checkpoint coordination.
- A plain Python consumer remains useful for simple processing with little shared state.
- Sophisticated state and recovery needs push a job toward engine machinery instead of hand-written consumer code.
- The choice depends on latency, volume, correctness requirements, and operational complexity.
- A consumer process scales only as far as the partitions it can be spread across.
- Flink keeps window state in a keyed state backend, so aggregates accumulate across many records.
- Batch processing or a simple consumer suffices when results may wait for a scheduled run.

# Module 7 Unit 5 - Save Events to PostgreSQL

- A database consumer turns events into persistent rows with parameterized INSERT statements.
- The course example uses autocommit and independent Kafka offset behavior, so it is not exactly-once end to end.
- Replays duplicate rows because `processed_events` has no deduplication key.
- If a write succeeds and the consumer then crashes before committing its offset, the record is processed again.
- At-least-once delivery becomes visible duplicate data in PostgreSQL whenever no deduplication key exists.
- An idempotent write, such as a unique key with upsert, keeps replays from adding extra rows.

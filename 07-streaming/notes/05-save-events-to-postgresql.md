# Module 7 Unit 5 — Save events to PostgreSQL

## Core ideas

- A database consumer turns events into persistent rows with parameterized INSERTs.
- The course example uses autocommit and Kafka offset behavior independently; it is not an end-to-end exactly-once implementation.
- Replays can duplicate rows because processed_events has no deduplication key.

## Practice plan

1. Apply ../sql/init.sql via the command in the working README.
2. Start the PostgreSQL consumer, produce events, then query count(*) from processed_events.

## Understanding check

What can happen if the database write succeeds but the consumer crashes before committing its offset?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/07-streaming/05-save-events-to-postgresql.md)

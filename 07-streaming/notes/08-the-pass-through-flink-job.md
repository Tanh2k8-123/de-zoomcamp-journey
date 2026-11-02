# Module 7 Unit 8 — The pass-through Flink job

Status: Prepared study notes; not yet practiced in this learning repo.

## Core ideas

- The pass-through job declares Kafka input and a JDBC sink, then inserts converted events into PostgreSQL.
- Flink table DDL describes connectors; the physical PostgreSQL target table must exist.
- The job enables checkpoints. Recovery still depends on available checkpoints and configured restart/storage behavior; JDBC append does not automatically provide exactly-once output.

## Practice plan

1. Initialize SQL tables and submit pass_through_job.py using ../code/README.md.
2. Because the source uses latest-offset, submit the job before publishing new records.

## Understanding check

Why can a running latest-offset job initially write zero rows?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/07-streaming/08-the-pass-through-flink-job.md)

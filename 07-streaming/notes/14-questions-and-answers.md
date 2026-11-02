# Module 7 Unit 14 — Q&A

Status: Prepared study notes; not yet practiced in this learning repo.

## Core ideas

- Recovery requires usable state/checkpoints, source retention, and compatible sink behavior.
- Exactly-once state processing is different from exactly-once effects in an external database.
- Streaming is justified by required freshness and stateful processing; micro-batch can be simpler when its latency is acceptable.

## Practice plan

1. Explain the behavior for a crash between a PostgreSQL write and offset commit.
2. Compare a daily report, a one-minute dashboard, and fraud detection by latency and recovery requirements.

## Understanding check

What evidence would you need before claiming end-to-end exactly-once delivery?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/07-streaming/14-questions-and-answers.md)

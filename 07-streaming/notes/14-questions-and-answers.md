# Module 7 Unit 14 - Q&A

- Recovery needs usable state and checkpoints, source retention, and compatible sink behavior together.
- Exactly-once state processing is different from exactly-once effects in an external database.
- A crash between a PostgreSQL write and an offset commit causes reprocessing rather than data loss.
- Reprocessing produces duplicate rows unless the sink is idempotent or deduplicates on a key.
- Claiming end-to-end exactly-once delivery requires transactional or idempotent sinks next to Flink checkpoints.
- Streaming is justified by required freshness and stateful processing, not by habit.
- Micro-batch can be simpler when its latency already satisfies the consumers of the results.
- A daily report, a one-minute dashboard, and fraud detection impose different latency and recovery demands.

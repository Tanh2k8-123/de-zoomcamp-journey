# Module 7 Unit 4 - Consume Messages with Python

- A consumer deserializes records and advances through offsets within each topic-partition.
- Consumer groups keep independent progress, and partitions are shared among the consumers inside one group.
- Adding a consumer to an existing group splits partitions instead of duplicating the stream.
- A new consumer group starts from its own reset policy rather than from another group's progress.
- Committed offsets describe read progress and are not atomic with writes to an external database.
- Without committed offsets, a restarted consumer falls back to its startup position such as earliest or latest.
- A slow consumer accumulates lag on its partitions but does not lose records while retention holds.

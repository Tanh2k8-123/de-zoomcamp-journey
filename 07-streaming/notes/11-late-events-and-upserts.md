# Module 7 Unit 11 — Late events and upserts

## Core ideas

- Out-of-order events may arrive after newer event timestamps. Whether they are late depends on watermark progress, not just wall-clock delay.
- A primary key on the aggregate sink supports updates of the same logical window/location row.
- Upserts help avoid duplicate aggregate keys but do not recover events already dropped after a window closes.

## Practice plan

1. Run the real-time producer with the demo aggregation and observe open versus closed windows.
2. Inspect processed_events_aggregated and compare its composite key with the Flink sink DDL.

## Understanding check

Why does a sink upsert not solve every late-event problem?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/07-streaming/11-late-events-and-upserts.md)

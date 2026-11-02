# Module 7 Unit 9 — Offsets - earliest vs latest

## Core ideas

- Offsets identify positions within partitions. Startup/reset behavior and checkpoint recovery are separate mechanisms.
- earliest can replay retained history; latest starts at the current end when that startup mode applies.
- A valid committed offset can take precedence over auto_offset_reset for a Python consumer.

## Practice plan

1. Compare the source options in pass_through_job.py and aggregation_job.py.
2. Predict behavior before starting a new consumer group versus restarting an existing one.

## Understanding check

Does changing auto_offset_reset always rewind an existing group?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/07-streaming/09-offsets-earliest-vs-latest.md)

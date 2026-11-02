# Module 7 Unit 10 — Aggregation with tumbling windows

Status: Prepared study notes; not yet practiced in this learning repo.

## Core ideas

- A tumbling window is fixed-size and non-overlapping. Group by window and location to compute counts and revenue.
- Event time comes from the event payload; processing time is when the system handles it.
- Watermarks estimate event-time progress. Output waits for progress that closes windows; a quiet stream may not advance it.

## Practice plan

1. Inspect aggregation_job.py: it uses one-hour event-time windows and a five-second watermark expression.
2. Use the ten-second aggregation_job_demo.py with producer_realtime.py for a smaller observation cycle; inspect sink keys first.

## Understanding check

Why might sending one old event fail to produce a completed window immediately?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/07-streaming/10-aggregation-with-tumbling-windows.md)

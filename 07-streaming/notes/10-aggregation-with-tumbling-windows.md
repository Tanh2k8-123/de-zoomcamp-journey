# Module 7 Unit 10 - Aggregation with Tumbling Windows

- A tumbling window is fixed-size and non-overlapping, so each event falls into exactly one window.
- Grouping by window and location computes the ride counts and revenue for each area.
- Event time comes from the event payload, while processing time is when the system handles the record.
- Watermarks estimate event-time progress, and output waits for progress that closes a window.
- A quiet stream may stop advancing the watermark, leaving earlier windows open without results.
- The aggregation job uses one-hour event-time windows with a five-second watermark offset.
- A demo job with ten-second windows makes window closing observable within a short production run.
- One old event may produce no completed window, because it does not push the watermark past the window end.

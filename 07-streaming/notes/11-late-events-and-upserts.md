# Module 7 Unit 11 - Late Events and Upserts

- Out-of-order events may arrive after the job has already seen newer event timestamps.
- Whether an event counts as late depends on watermark progress, not on wall-clock delay.
- A primary key on the aggregate sink supports updates of the same logical window and location row.
- Upserts avoid duplicate aggregate keys but do not recover events already dropped after a window closes.
- The sink table `processed_events_aggregated` uses a composite key that has to match the Flink sink DDL.
- A late event can only revise an aggregate while the window state behind that aggregate is still available.

# Module 2 Unit 8 — Scheduling and Backfills

- Scheduling turns a manual pipeline into a recurring production job.
- A schedule trigger uses cron syntax to define when a flow should run.
- In this flow, the trigger runs monthly on the first day at 09:00 UTC for green taxi and 10:00 UTC for yellow taxi.
- The trigger provides `trigger.date`, and the flow uses that date to build the expected CSV filename.
- Backfilling replays historical periods by running the same scheduled flow for past dates.
- In Kestra UI, you can create backfills from a flow or trigger and select a date window.
- `concurrency.limit: 1` prevents two executions of this flow from running simultaneously.
- It is good practice to label backfill executions, for example `backfill: true`, so they are easy to find.

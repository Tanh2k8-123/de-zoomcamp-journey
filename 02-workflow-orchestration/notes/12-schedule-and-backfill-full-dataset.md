# Module 2 Unit 12 — GCP Workflow: Schedule and Backfill Full Dataset

This unit requires working GCP credentials. Reference flow:

```text
flows/gcp/09_gcp_taxi_scheduled.yaml
```

## Key idea

Once the pipeline is running in cloud storage and BigQuery, you can backfill the full historical dataset without depending only on your local machine.

## Scheduling

The scheduled flow uses date triggers to derive the year-month file and process the matching partition.

## Backfilling

From the Kestra UI, you can run a backfill over a date range. Kestra then creates executions for each scheduled period.

## Important production lesson

A good pipeline should be idempotent:

- Running one month twice should not duplicate rows.
- Running a full year should only add missing rows.
- `MERGE` and `unique_row_id` support this.

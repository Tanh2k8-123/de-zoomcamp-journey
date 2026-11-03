# Module 5 Unit 3 - Building an End-to-End Pipeline with NYC Taxi Data

- The course taxi pipeline separates Python ingestion, SQL cleaning and lookup joins, and aggregate reports.
- A deliberately small first interval keeps a wrong date boundary cheap to notice.
- Explicit dependencies order the steps, while quality checks evaluate conditions on the produced output.
- Append ingestion can duplicate rows when the same interval is rerun.
- Interval replacement requires a filter aligned exactly with the range being replaced.
- A finished ingestion also needs schema normalization and a defined rerun strategy.
- The local starter shows these layer boundaries with synthetic rows and is not a finished monthly taxi pipeline.

# Module 5 Unit 3 — Building an End-to-End Pipeline with NYC Taxi Data

## Core ideas

- The course taxi pipeline separates Python ingestion, SQL cleaning/lookup joins, and aggregate reports.
- Use a small interval first. Explicit dependencies order the steps; quality checks evaluate output conditions.
- Append ingestion can duplicate data on reruns. Interval replacement needs a query filter aligned with the replaced range.
- The local starter demonstrates the layer boundaries with synthetic rows; it is not a completed implementation of monthly taxi ingestion.

## Practice plan

1. Run the starter and inspect reports.trips_report.
2. Before implementing the full taxi download, define date boundaries, schema normalization, and a rerun strategy using the linked course example.

## Understanding check

Why can rerunning an append-only asset for the same month double the data?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/05-data-platforms/03-nyc-taxi-pipeline.md)
- [Lesson video](https://www.youtube.com/watch?v=q0k_iz9kWsI)

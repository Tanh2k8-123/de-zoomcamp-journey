# Module 2 Unit 6 — Getting Started Data Pipeline

- This flow is a mini ETL pipeline: Extract, Transform, Load/Query.
- Extract uses an HTTP download task.
- Transform uses Python to filter and reshape the downloaded JSON data.
- Query uses DuckDB to aggregate JSON data into a table.
- Tasks can pass files and outputs through Kestra using templating.
- The Gantt tab helps understand task order, dependencies, and execution timing.

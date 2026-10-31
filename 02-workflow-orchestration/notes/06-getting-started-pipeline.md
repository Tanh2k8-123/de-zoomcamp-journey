# Module 2 Unit 6 - Getting Started Data Pipeline

- This flow is a mini ETL pipeline: Extract, Transform, Load/Query.
- Extract uses an HTTP download task.
- Transform uses Python inside a container to filter and reshapre data.
- Query uses DuckDB to aggregate JSON data.
- Tasks can pass files and outputs through Kestra using templating.
- The Gantt tab helps understand task dependencies and execution timing.

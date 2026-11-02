# Learning progress

Updated: 2026-11-03. Track observed learning separately from prepared reference material.

| Module | Status | Workspace |
| --- | --- | --- |
| 1 — Docker & Terraform | Core studied; GCP overview offline | 01-docker-terraform/ |
| 2 — Workflow Orchestration | Local material studied; cloud/AI flows not run | 02-workflow-orchestration/ |
| 3 — Data Warehousing | Units 1–5 studied at core/concept scope; Unit 6 not studied deeply | 03-data-warehouse/ |
| 4 — Analytics Engineering | Units 1–6 core completed; Unit 7 in progress; 8–11 prepared | 04-analytics-engineering/taxi_rides_ny/ |
| 5 — Data Platforms | Notes and synthetic Bruin starter prepared; not practiced | 05-data-platforms/bruin_taxi/ |
| 6 — Batch | Notes, local starter, and course references prepared; not practiced | 06-batch/code/ and notebooks/ |
| 7 — Streaming | Notes and workshop code prepared; not practiced | 07-streaming/code/ |

Study workflow: explain core/architecture -> inspect project code -> learner runs WSL commands -> review actual results -> update the unit note -> commit related code and push.

Homework is outside scope. The goal is tool understanding and a final project. GCP-dependent work remains reference-only until a suitable writable environment is available; no choice of Databricks or other hosting is finalized here.

Current next step: Module 4 Unit 7, inspect macros/get_vendor_data.sql and compile dim_vendors to see generated SQL. Existing raw taxi data, local profiles, downloaded datasets, environments, and build artifacts stay outside Git.

Preparation validation: Python syntax (12 files), YAML and SQL metadata parsing, TOML parsing, notebook JSON (7 notebooks), internal documentation links, Docker Compose configuration, and Git whitespace checks passed. The synthetic Bruin SQL returned the expected two-row result when executed independently in DuckDB. Bruin CLI, Spark jobs, and streaming services were not executed. New notes record learning plans rather than unobserved completion.

# Module 5 Unit 1 - Introduction to Bruin

- Bruin combines ingestion, transformation, orchestration, checks, and lineage around one graph of assets.
- Earlier course modules split these duties across ingestion scripts, Kestra orchestration, and dbt transformation.
- Feature overlap does not make Bruin, Kestra, and dbt the same tool.
- Extraction, staging, and business reports stay separate responsibilities even when one platform executes all three.
- Connections, checks, and scheduling attach to specific nodes instead of applying to the whole pipeline uniformly.
- The course ships a seed-based local starter and leaves the full taxi ingestion as a later exercise.

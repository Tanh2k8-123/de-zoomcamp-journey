# Module 4 Unit 8 - Documentation

- Sources, models, columns, seeds, and macros are documented in YAML using names that match project resources.
- Useful descriptions state the grain, business meaning, units, filters, and limitations instead of repeating column names.
- `dbt docs generate` collects run artifacts and database catalog metadata, and `dbt docs serve` displays them locally.
- The site reflects the artifacts of the most recent successful generate, so stale docs can hide newer model changes.
- A declared `data_type` is documentation metadata, which differs from an enforced model contract.
- Documenting the grain tells an analyst how many rows represent one real trip and whether measures can be summed safely.
- Recording filters and exclusions prevents an analyst from treating a deliberately partial model as complete warehouse data.
- Docs are the handoff surface to analysts, so a technically correct model can still be hard to use without them.

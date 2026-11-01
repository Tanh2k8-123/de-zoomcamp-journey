# Module 4 Unit 2 - What is dbt?

- dbt is a transformation tool that sits on the top of a data warehouse.
- You write SQL models; dbt compiles them, runs them, and materializes the results.
- dbt brings software practices to analytics: version control, modularity, testing, documentation, enviroments.
- '{{ref('model')}}' links models together into a dependency graph.
- '{{ source('raw', 'table') }}' references raw data already in the warehouse.
- dbt Core is open-source CLI; dbt Cloud is a SaaS IDE + orchestration layer.
- For this course without GCP, we use dbt Core + DuckDB locally.

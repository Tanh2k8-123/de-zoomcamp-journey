# Module 5 Unit 6 - Core Concepts: Projects

- A project is the container for environments, connections, and one or more pipelines.
- Environment names separate connection configurations, not necessarily the physical data behind them.
- Connection names referenced by a pipeline must match entries in the local configuration.
- A connection name resolves to a concrete target, such as a specific DuckDB database path.
- Two environments aimed at the same DuckDB file write into the same physical data.
- `.bruin.yml.example` documents the expected structure while the real file stays local.

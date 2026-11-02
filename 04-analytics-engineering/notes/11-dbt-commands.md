# Module 4 Unit 11 — dbt Commands

## Core ideas

- debug checks configuration/connectivity; deps installs packages; compile renders executable SQL without materializing models.
- run builds models; seed loads CSVs; test checks data or fixtures; build coordinates selected resources and tests in dependency order.
- +model selects ancestors, model+ selects descendants. Resource selection and indirect test selection are separate controls.
- compile may connect to the database and execute introspective macro queries. It is not a guaranteed offline or zero-cost operation.
- --fail-fast stops on failure; it does not turn warnings into errors. --warn-error controls promotion of warnings. --full-refresh rebuilds selected incremental models and can be expensive.

## Practice plan

1. Use dbt ls --select +fct_trips to inspect selection before executing it.
2. Use dbt run --help and dbt build --help. Only use full refresh deliberately; keep baseline state artifacts outside the active target directory.

## Understanding check

When would dbt build be preferable to running only dbt run?

## References

- [Official compile behavior](https://docs.getdbt.com/reference/commands/compile)
- [Official fail-fast behavior](https://docs.getdbt.com/reference/global-configs/failing-fast)

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/04-analytics-engineering/11-dbt-commands.md)
- [Lesson video](https://www.youtube.com/watch?v=t4OeWHW3SsA)

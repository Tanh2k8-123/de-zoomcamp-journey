# Module 4 Unit 11 - dbt Commands

- `dbt debug` checks project configuration and connectivity, and `dbt deps` installs declared packages.
- `dbt compile` renders executable SQL without materializing models.
- Compilation can still connect to the database and run introspective queries, so it is not guaranteed offline or zero-cost.
- `dbt run` builds models, `dbt seed` loads CSVs, and `dbt test` checks declared conditions.
- `dbt build` coordinates models, seeds, tests, and snapshots in dependency order, which suits end-to-end validation of a change.
- `+model` selects ancestors and `model+` selects descendants, independent of indirect test selection.
- `dbt ls` previews the resources a selection expression resolves to before anything executes.
- `--fail-fast` stops on the first failure but does not turn warnings into errors; `--warn-error` controls that promotion.
- `--full-refresh` rebuilds selected incremental models from scratch and can be expensive, so use it deliberately.

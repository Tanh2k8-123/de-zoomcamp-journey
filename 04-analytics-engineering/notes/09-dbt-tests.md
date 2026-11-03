# Module 4 Unit 9 - dbt Tests

- Data tests query for violating rows and pass when they return none; a test never repairs data.
- Generic tests are reusable and configured in YAML, while singular tests express one specific rule in their own SQL file.
- Built-in generic tests include `not_null`, `unique`, `accepted_values`, and `relationships`.
- `relationships` excludes NULL child keys, so add `not_null` when the foreign key is also mandatory.
- Unit tests compare model logic against small fixtures but still execute SQL through the adapter.
- Contracts check the output shape and declared column types, with constraint enforcement depending on the adapter.
- Freshness compares a configured timestamp against recency thresholds, and historical taxi dates do not measure current ingestion health.
- A FAIL means the test ran and found bad data, while an ERROR means it could not run, for example because a referenced table is missing.
- Indirect test selection is separate from resource selection: eager includes a test when any parent is selected, cautious requires all parents.

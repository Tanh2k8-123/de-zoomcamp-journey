# Module 4 Unit 7 - dbt Seeds and Macros

- Seeds load small CSV lookup files into warehouse tables as dbt relations.
- Editing a CSV does not change the loaded table until `dbt seed` runs again, and `dbt run` never loads seeds.
- `ref()` works for both models and seeds, so downstream SQL does not distinguish them.
- Macros are Jinja templates that generate SQL at compile time, not functions installed inside DuckDB.
- A macro call such as `get_vendor_data('vendor_id')` expands into a CASE expression, and the quoted argument supplies column expression text.
- A seed stores values as joinable data, while a macro bakes logic into the generated SQL of every calling model.
- Because macro output is fixed at compile time, changing a macro requires re-running the models that call it.
- Packages ship macros, so `dbt deps` must install `dbt_utils` before a model using its macro can compile.
- Seeds suit small, human-editable reference data rather than large or high-churn tables.

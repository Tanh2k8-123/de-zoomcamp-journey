# Module 6 Unit 5 - Spark DataFrames

- Select, filter, and withColumn are lazy transformations that only build a plan.
- Show, count, and writing out are actions that trigger execution of that plan.
- Constructing a filtered DataFrame does not scan the input until an action runs.
- Built-in Spark expressions let the optimizer push work down and rewrite it.
- A Python UDF adds serialization and execution boundaries and is often slower.
- The explain() plan shows how a DataFrame will actually be executed.
- DataFrame columns carry schema types, so expressions and aggregations stay typed.

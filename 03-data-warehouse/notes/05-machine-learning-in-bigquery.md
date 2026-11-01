# Module 3 Unit 5 — Machine Learning in BigQuery

## What BigQuery ML is

BigQuery ML lets you train, evaluate, predict, explain, and tune a model using SQL inside the data warehouse.

Main idea:

```text
Do not move data out of the warehouse to train the model.
```

## When to use it

Good fit:

- analysts/data engineers already working in BigQuery,
- simple models for tabular data,
- feature table is already in BigQuery,
- you want quick baselines.

Not ideal:

- very complex ML pipelines,
- custom Python training logic,
- tight GPU training needs,
- full MLOps lifecycle with external experiment tracking.

## ML workflow in SQL

```text
1. Select data
2. Filter bad rows
3. Create feature table
4. Cast categorical columns to STRING
5. CREATE MODEL
6. ML.EVALUATE
7. ML.PREDICT
8. ML.EXPLAIN_PREDICT
9. Hyperparameter tuning
```

## Important lesson: data types matter

In the taxi example:

```text
PULocationID = integer
DOLocationID = integer
payment_type = integer
```

These are not numeric features. They are categories.

If left as integers, BigQuery may treat them like numbers. For linear regression, it is often better to cast them to `STRING` so BigQuery one-hot encodes them.

## Model creation

```sql
CREATE OR REPLACE MODEL `project.dataset.tip_model`
OPTIONS(
  model_type='linear_reg',
  input_label_cols=['tip_amount'],
  DATA_SPLIT_METHOD='AUTO_SPLIT'
) AS
SELECT *
FROM `project.dataset.yellow_tripdata_ml`
WHERE tip_amount IS NOT NULL;
```

## Evaluation and prediction

Useful functions:

```text
ML.FEATURE_INFO      -> how features are interpreted
ML.EVALUATE          -> model metrics
ML.PREDICT           -> predicted values
ML.EXPLAIN_PREDICT   -> top features contributing to prediction
```

## Why this matters for data engineering

A data engineer often does not need to build the most advanced model. The important part is:

- create clean feature tables,
- keep features in the warehouse,
- version the training query,
- schedule retraining,
- evaluate metrics,
- deploy predictions into downstream tables.

## Recommendation for your current goal

Since you are focusing on core data engineering and final project:

- understand Unit 5 conceptually,
- do not spend time training BQML unless GCP works,
- spend more time on Module 4 dbt because dbt is directly useful for project transformations.

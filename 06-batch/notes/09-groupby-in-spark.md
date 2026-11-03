# Module 6 Unit 9 - GroupBy in Spark

- Grouping usually does partial aggregation, shuffles by key, then combines results.
- A shuffle redistributes data between partitions and across executors.
- Shuffle network transfer and disk spill can dominate the cost of a query.
- Rows sharing a key must land in the same partition before they can combine.
- Select and filter are narrow operations that need no shuffle at all.
- A simple groupBy costs more than a filter because it forces that redistribution.
- Skewed keys produce uneven tasks, and adding partitions alone does not fix skew.

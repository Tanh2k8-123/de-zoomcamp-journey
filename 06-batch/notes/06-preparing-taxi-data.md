# Module 6 Unit 6 - Preparing Yellow and Green Taxi Data

- Preparing the taxi data is optional and only needs a small subset of months.
- Green and yellow taxi files name their timestamp columns differently.
- Schemas must be renamed and aligned before the two sources are unioned.
- Unioning mismatched schemas silently yields misaligned or null columns.
- Parquet preserves column types and stores data column-oriented for selective reads.
- Partition layout and file size should be chosen deliberately for the query patterns.
- Too many partitions create small files, while too few limit parallelism.

# Module 5 Unit 8 - Core Concepts: Assets

- An asset combines metadata, executable content, and its declared dependencies.
- SQL, Python, and seed files are all examples of asset types.
- Materialization determines how results are stored or replaced in the target.
- Checks describe the conditions the produced output is expected to satisfy.
- The starter uses explicit `depends` entries and a `@bruin` comment metadata block.
- Illustrative decorator syntax must not be mixed into executable SQL.
- An asset definition says what the asset is, while its query body only computes the result.

# Module 5 Unit 9 - Core Concepts: Variables

- Runtime variables let one pipeline handle different dates or parameters without editing code.
- Built-in interval values differ from custom parameters defined by the pipeline author.
- Rendered SQL and the installed CLI help are the reliable references for variable behavior.
- Interval boundaries must state inclusive or exclusive edges, and filters must match replacement behavior.
- A month label such as January has to become an exact timestamp range before it can filter data.
- If the deleted interval is narrower than the selected rows, the extra period accumulates on each rerun.
- The supplied synthetic starter rebuilds small tables and intentionally has no interval filtering.
- Extend that starter only after verifying the boundary semantics its variables would carry.

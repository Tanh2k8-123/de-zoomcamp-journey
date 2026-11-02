# Module 7 Unit 13 — Cleanup

## Core ideas

- Stop submitted jobs and local services when finished.
- docker compose down removes the Compose containers/network; -v additionally removes managed volumes and can destroy local data.
- The course Compose has no explicit durable volumes for broker/PostgreSQL data. Do not rely on container recreation to preserve workshop state.

## Practice plan

1. Inspect running jobs, then run docker compose down from ../code when finished.
2. Use down -v only when intentionally discarding lab volumes; do not run broad Docker prune commands.

## Understanding check

Why should cleanup scope be limited to the current lab?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/07-streaming/13-cleanup.md)

# Module 7 Unit 12 — Understanding window types

## Core ideas

- Tumbling: fixed size, no overlap; suitable for one summary per interval.
- Sliding: fixed size with a shorter slide; an event may contribute to several windows.
- Session: groups activity separated by inactivity gaps; useful when activity has irregular boundaries.

## Practice plan

1. Draw event times on paper and assign them to each window type.
2. Compare a five-minute tumbling window with a ten-minute window sliding every five minutes.

## Understanding check

Which window would you choose to describe activity sessions rather than clock-aligned totals?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/07-streaming/12-understanding-window-types.md)

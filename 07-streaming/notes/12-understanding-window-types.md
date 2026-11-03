# Module 7 Unit 12 - Understanding Window Types

- A tumbling window has fixed size and no overlap, giving one summary per interval.
- A sliding window has fixed size with a shorter slide, so one event contributes to several windows.
- A session window groups activity separated by inactivity gaps and suits irregular activity boundaries.
- A ten-minute window sliding every five minutes lets one event land in two adjacent windows.
- When the slide equals the window size, sliding windows behave like non-overlapping tumbling windows.
- A session window keeps its state open until the configured gap of inactivity has passed.
- Tumbling windows align to fixed boundaries, so they answer clock-period questions rather than per-entity activity.

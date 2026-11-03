# Module 7 Unit 9 - Offsets - Earliest vs Latest

- Offsets identify record positions within each partition of a topic.
- Startup and reset behavior and checkpoint recovery are separate mechanisms in a streaming job.
- The earliest mode lets a consumer replay whatever history the broker still retains.
- The latest mode starts reading at the current end of the partition when that startup mode applies.
- A valid committed offset takes precedence over `auto_offset_reset` for a Python consumer.
- Changing `auto_offset_reset` does not rewind an existing group that already has committed offsets.
- Retention limits replay, because records past the retention window are no longer available to read.

# Module 7 Unit 4 — Consume messages with Python

Status: Prepared study notes; not yet practiced in this learning repo.

## Core ideas

- A consumer deserializes records and advances through topic-partition offsets.
- Consumer groups maintain independent progress; within a group, partitions are assigned among consumers.
- Offset commits describe progress but are not inherently atomic with external database writes.

## Practice plan

1. Run the console consumer in a separate terminal and publish events.
2. Stop with Ctrl+C and inspect group_id and offset settings before restarting.

## Understanding check

Why does adding a consumer to the same group differ from using a new group?

## References

- [Course unit](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/8207266ca9fb30f0578cd5ffc4701cb8c3f7a52e/07-streaming/04-consume-messages-with-python.md)

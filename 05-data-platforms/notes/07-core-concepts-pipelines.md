# Module 5 Unit 7 - Core Concepts: Pipelines

- A pipeline groups assets that share one schedule and one configuration.
- `pipeline.yml` names the pipeline and selects its default connections.
- The dependency graph, not the order of files, determines asset execution order.
- A declared schedule only describes timing; a local CLI invocation is not an always-on scheduler.
- The starter pipeline demonstrates a three-layer asset graph under a single definition.
- Lineage output is how you inspect the graph a pipeline will actually execute.
- Assets with different cadences, such as hourly and monthly work, fit separate pipelines better.

# Module 2 Unit 17 — Deploy Kestra to the Cloud

This is optional and requires a cloud account, usually GCP. It was not executed here.

## Core idea

Local Docker Compose is good for learning and development. Production orchestration should run on stable cloud infrastructure with:

- persistent storage,
- managed database or queue,
- controlled secrets,
- versioned flows,
- deployment pipeline.

## Git-based workflow deployment

A good production pattern is:

```text
Flow YAML in Git
  -> CI/CD validates and formats flow
  -> Kestra API deploys approved flow
```

## Security rule

Do not commit sensitive values into YAML. Use Kestra Secrets and KV Store.

Useful production checks:

- test each flow with a narrow date window before scheduling daily,
- check concurrency and retries,
- keep credentials out of Git,
- store execution logs and metadata in managed storage.

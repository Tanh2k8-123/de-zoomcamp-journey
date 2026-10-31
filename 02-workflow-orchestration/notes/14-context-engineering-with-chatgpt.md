# Module 2 Unit 14 — Context Engineering with ChatGPT

Generic chat assistants can be wrong about current tool syntax because their training data may be outdated.

## Common failure pattern

Ask an AI for a Kestra YAML flow, and it may generate:

- old plugin class names,
- deprecated fields,
- invented task types,
- syntax that fails in the current Kestra version.

## What is context engineering?

Context engineering means giving the AI the exact information it needs:

- current documentation,
- relevant plugin reference,
- example flow,
- error message,
- version,
- local constraints.

## Better prompt pattern

Instead of:

```text
Write a Kestra Python flow.
```

Use:

```text
Write a Kestra flow using io.kestra.plugin.scripts.python.Script.
Use taskRunner Docker.
Dependencies are requests and kestra.
The script must send outputs using Kestra.outputs().
```

## Key learning

AI quality depends heavily on context. For production data pipelines, provide current docs and validate every generated flow.

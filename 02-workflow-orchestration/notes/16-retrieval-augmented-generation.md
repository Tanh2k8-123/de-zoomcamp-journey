# Module 2 Unit 16 — Retrieval Augmented Generation

This is a bonus AI unit and requires Gemini API access. Reference flows are stored under:

```text
flows/ai/10_chat_without_rag.yaml
flows/ai/11_chat_with_rag.yaml
```

## RAG concept

RAG means:

```text
Retrieve relevant documents
  -> augment the prompt with those documents
  -> generate a grounded answer
```

Without RAG, the model may answer from outdated or vague training knowledge. With RAG, the workflow retrieves current documentation and passes it as context.

## Pipeline pattern

```text
Question
  -> retrieve docs
  -> create embeddings
  -> find similar chunks
  -> build prompt with context
  -> LLM answer
```

## Why this matters for data engineering

AI can help generate flows or explain pipelines, but if it does not know current tool behavior, it can hallucinate. RAG is one way to reduce hallucination by giving the model the right documentation at query time.

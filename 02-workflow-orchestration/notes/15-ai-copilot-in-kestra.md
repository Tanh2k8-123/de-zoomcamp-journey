# Module 2 Unit 15 — AI Copilot in Kestra

This unit requires a Gemini API key and a configured Kestra AI Copilot. It was not executed in this repo because the required API access was not set up.

## What AI Copilot is for

Kestra AI Copilot is designed to generate and modify Kestra flows using Kestra-specific context, including current plugins and syntax.

## Setup pattern

1. Create a Gemini API key in Google AI Studio.
2. Store the key securely as an environment variable or secret.
3. Configure Kestra with:

```yaml
kestra:
  ai:
    type: gemini
    gemini:
      model-name: gemini-2.5-flash
      api-key: ${GEMINI_API_KEY}
```

4. Restart Kestra.

## Security rule

Never commit API keys into Git or into Kestra flow YAML.

# Module 2 Unit 5 - Orchestrate Python Code in Kestra

- Kestra can orchestrate arbitrary Python scripts, not only predefined plugins.
- The 'python.Script' task runs Python code inside a container.
- 'taskRunner: Docker' means Kestra launches a temporary Docker container for the task.
- 'dependencies' installs Python packages needed by the script.
- 'Kestra.outputs()' sends data from Python back to Kestra.
- Later tasks can read script outputs with templating expressions.

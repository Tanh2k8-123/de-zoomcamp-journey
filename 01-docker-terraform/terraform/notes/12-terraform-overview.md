# Unit 12 - terraform Overview

- Terraform is Infrastructure as Code: infrastructure is defined in declarative config files.
- Terraform uses provides, such as 'hashicorp/google', to talk to cloud platforms.
- 'resource' blocks descreibe desired infrastucture objects.
- 'variable' blocks parameterize configs for different enviroments or users.
- Terraform keeps mapping between config and real infrastructure in 'terraform.tfstate'.
- Standard workflow is 'init', 'plan', 'apply', and 'destroy'.
- Never commit cloud credentials or state files that contain sensitive metadata.

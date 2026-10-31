# Harness Project Terraform Template

This configuration creates a Harness project in the `default` organization.
It uses account ID `A7G39RsCSRGmG1_n8-q9Tw` and creates the project named
`AWS EKS Project` with identifier `aws_eks_project` by default. Change the
input values in `variables.tf` or provide your own `.tfvars` file to customize it.

## Prerequisites

- Terraform 1.5.7 or later
- A Harness Next Gen platform API key with permission to create projects

Set the API key using either a sensitive Terraform input or the provider's
`HARNESS_PLATFORM_API_KEY` environment variable. Do not put it in Terraform
files or commit it.

PowerShell:

```powershell
# Terraform input variable
$env:TF_VAR_harness_platform_key = "<your_harness_platform_api_key>"

# Or provider environment variable
$env:HARNESS_PLATFORM_API_KEY = "<your_harness_platform_api_key>"
```

Bash:

```bash
# Terraform input variable
export TF_VAR_harness_platform_key="<your_harness_platform_api_key>"

# Or provider environment variable
export HARNESS_PLATFORM_API_KEY="<your_harness_platform_api_key>"
```

## Create the project

Run these commands from this directory:

```shell
terraform init
terraform plan
terraform apply
```

Terraform will ask for confirmation before creating the project. The local
Terraform state file tracks the created project and should not be committed.

To remove the project managed by this configuration, run `terraform destroy`.

## Reusable modules

The `modules/project` directory contains a reusable Harness project module.
The `modules/connectors` directory contains a connector module for GitHub,
Jenkins, AWS, and Helm. Connector credential values must be Harness secret
references; do not put plaintext credentials in Terraform files or workspace
variables.

The root configuration above continues to create the example project directly.
To use the reusable modules, add module blocks to a root Terraform configuration
and pass the module inputs there. For example:

```hcl
module "connectors" {
  source = "./modules/connectors"

  github = {
    identifier = "github_preprod"
    name       = "GitHub Pre-prod"
    username   = var.github_username
    token_ref  = "account.github_pat"
  }

  jenkins = null
  aws     = null
  helm    = null
}
```

In Terraform Cloud, set the workspace working directory to the repository root
for this existing root configuration. Either configure `harness_platform_key`
as a sensitive Terraform variable or `HARNESS_PLATFORM_API_KEY` as a sensitive
environment variable. Set `HARNESS_ACCOUNT_ID` as a Terraform variable (it
takes precedence over `account_id`). Values assigned to module inputs must be
declared in the root configuration and passed to the modules.

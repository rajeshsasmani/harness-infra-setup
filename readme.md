# Harness Project Terraform Template

This configuration creates a Harness project in the `default` organization.
It uses account ID `A7G39RsCSRGmG1_n8-q9Tw` and creates the project named
`AWS EKS Project` with identifier `aws_eks_project` by default. Change the
input values in `variables.tf` or provide your own `.tfvars` file to customize it.

## Prerequisites

- Terraform 1.5.7 or later
- A Harness Next Gen platform API key with permission to create projects

Set the API key in your shell; do not put it in Terraform files or commit it.

PowerShell:

```powershell
$env:HARNESS_PLATFORM_API_KEY = "<your_harness_platform_api_key>"
```

Bash:

```bash
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


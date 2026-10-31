terraform {
  required_version = ">= 1.5.7"

  required_providers {
    harness = {
      source  = "harness/harness"
      version = "~> 0.47.5"
    }
  }
}

provider "harness" {
  account_id        = var.account_id
  endpoint          = var.harness_platform_url
  platform_api_key  = var.harness_platform_key
}

module "project" {
  source = "./modules/project"

  identifier  = var.project_identifier
  name        = var.project_name
  org_id      = var.organization_id
  description = var.project_description
  color       = var.project_color
  tags        = var.project_tags
}

module "connectors" {
  source = "./modules/connectors"
  depends_on = [module.project]

  org_id = var.organization_id

  github = null
  jenkins = null
  aws = null
  helm = null

  # If you later enable connectors, set project_id to the project created above.
  # Example:
  # project_id = module.project.id
}

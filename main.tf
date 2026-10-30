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
  account_id = var.account_id
}

resource "harness_platform_project" "this" {
  identifier  = var.project_identifier
  name        = var.project_name
  org_id      = var.organization_id
  color       = var.project_color
  description = var.project_description
  tags        = var.project_tags
}
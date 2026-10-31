resource "harness_platform_project" "this" {
  identifier  = var.identifier
  name        = var.name
  org_id      = var.org_id
  description = var.description
  color       = var.color
  tags        = var.tags
}

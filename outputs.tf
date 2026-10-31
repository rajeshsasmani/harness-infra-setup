output "project_id" {
  description = "Harness project resource ID."
  value       = module.project.id
}

output "project_identifier" {
  description = "Harness project identifier."
  value       = module.project.identifier
}

output "project_name" {
  description = "Harness project name."
  value       = var.project_name
}
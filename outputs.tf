output "project_id" {
  description = "Harness project resource ID."
  value       = harness_platform_project.this.id
}

output "project_identifier" {
  description = "Harness project identifier."
  value       = harness_platform_project.this.identifier
}

output "project_name" {
  description = "Harness project name."
  value       = harness_platform_project.this.name
}
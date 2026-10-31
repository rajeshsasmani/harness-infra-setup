output "github_id" {
  description = "Harness GitHub connector resource ID, or null if not configured."
  value       = try(harness_platform_connector_github.this[0].id, null)
}

output "jenkins_id" {
  description = "Harness Jenkins connector resource ID, or null if not configured."
  value       = try(harness_platform_connector_jenkins.this[0].id, null)
}

output "aws_id" {
  description = "Harness AWS connector resource ID, or null if not configured."
  value       = try(harness_platform_connector_aws.this[0].id, null)
}

output "helm_id" {
  description = "Harness Helm connector resource ID, or null if not configured."
  value       = try(harness_platform_connector_helm.this[0].id, null)
}

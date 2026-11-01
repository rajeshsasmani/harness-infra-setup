variable "account_id" {
  description = "Harness account ID."
  type        = string
  default     = "A7G39RsCSRGmG1_n8-q9Tw"
}

variable "HARNESS_ACCOUNT_ID" {
  description = "Harness account ID supplied by Terraform Cloud. Overrides account_id when set."
  type        = string
  default     = null
}

variable "harness_platform_url" {
  type        = string
  description = "Harness Platform URL (defaults to Harness SaaS)"
  default     = "https://app.harness.io/gateway"
}
variable "harness_platform_key" {
  type        = string
  description = "Harness Platform API Key for authentication (falls back to HARNESS_PLATFORM_API_KEY env var)"
  sensitive   = true
}
variable "organization_id" {
  description = "Harness organization identifier."
  type        = string
  default     = "default"
}

variable "project_name" {
  description = "Display name for the Harness project."
  type        = string
  default     = "AWS EKS Project"
}

variable "project_identifier" {
  description = "Unique identifier for the Harness project."
  type        = string
  default     = "aws_eks_project"
}

variable "project_description" {
  description = "Description for the Harness project."
  type        = string
  default     = "Managed by Terraform."
}

variable "project_color" {
  description = "Project color in hexadecimal format."
  type        = string
  default     = "#0063F7"
}

variable "project_tags" {
  description = "Tags to associate with the project."
  type        = set(string)
  default     = ["managed-by-terraform"]
}

variable "github" {
  description = "GitHub connector configuration. Set to null to skip creating it."
  type = object({
    identifier         = string
    name               = string
    username           = string
    token_ref          = string
    url                = optional(string, "https://github.com")
    connection_type    = optional(string, "Account")
    validation_repo    = optional(string)
    delegate_selectors = optional(set(string), [])
    description        = optional(string)
    tags               = optional(set(string), [])
    org_id             = optional(string)
    project_id         = optional(string)
  })
  default = null
}

variable "jenkins" {
  description = "Jenkins connector configuration. Set to null to skip creating it."
  type = object({
    identifier         = string
    name               = string
    jenkins_url        = string
    username           = string
    password_ref       = string
    delegate_selectors = optional(set(string), [])
    description        = optional(string)
    tags               = optional(set(string), [])
    org_id             = optional(string)
    project_id         = optional(string)
  })
  default = null
}

variable "aws" {
  description = "AWS connector configuration. Set to null to skip creating it."
  type = object({
    identifier         = string
    name               = string
    access_key_ref     = string
    secret_key_ref     = string
    delegate_selectors = optional(set(string), [])
    description        = optional(string)
    tags               = optional(set(string), [])
    org_id             = optional(string)
    project_id         = optional(string)
  })
  default = null
}

variable "helm" {
  description = "Helm connector configuration. Set to null to skip creating it."
  type = object({
    identifier         = string
    name               = string
    url                = string
    password_ref       = string
    username           = optional(string)
    delegate_selectors = optional(set(string), [])
    description        = optional(string)
    tags               = optional(set(string), [])
    org_id             = optional(string)
    project_id         = optional(string)
  })
  default = null
}

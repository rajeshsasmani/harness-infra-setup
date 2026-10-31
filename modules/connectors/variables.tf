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

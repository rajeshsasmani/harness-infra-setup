variable "account_id" {
  description = "Harness account ID."
  type        = string
  default     = "A7G39RsCSRGmG1_n8-q9Tw"
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
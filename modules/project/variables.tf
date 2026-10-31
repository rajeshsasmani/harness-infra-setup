variable "identifier" {
  description = "Unique identifier for the project."
  type        = string
}

variable "name" {
  description = "Display name for the project."
  type        = string
}

variable "org_id" {
  description = "Identifier of the Harness organization that owns the project."
  type        = string
}

variable "description" {
  description = "Optional project description."
  type        = string
  default     = null
}

variable "color" {
  description = "Optional project color in hexadecimal format."
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags to associate with the project."
  type        = set(string)
  default     = []
}

terraform {
  required_version = ">= 1.5.7"

  required_providers {
    harness = {
      source  = "harness/harness"
      version = "~> 0.47.5"
    }
  }
}

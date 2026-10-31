resource "harness_platform_connector_github" "this" {
  count = var.github == null ? 0 : 1

  identifier         = var.github.identifier
  name               = var.github.name
  description        = var.github.description
  tags               = var.github.tags
  org_id             = var.github.org_id
  project_id         = var.github.project_id
  url                = var.github.url
  connection_type    = var.github.connection_type
  validation_repo    = var.github.validation_repo
  delegate_selectors = var.github.delegate_selectors

  credentials {
    http {
      username  = var.github.username
      token_ref = var.github.token_ref
    }
  }
}

resource "harness_platform_connector_jenkins" "this" {
  count = var.jenkins == null ? 0 : 1

  identifier         = var.jenkins.identifier
  name               = var.jenkins.name
  description        = var.jenkins.description
  tags               = var.jenkins.tags
  org_id             = var.jenkins.org_id
  project_id         = var.jenkins.project_id
  jenkins_url        = var.jenkins.jenkins_url
  delegate_selectors = var.jenkins.delegate_selectors

  auth {
    type = "UsernamePassword"

    jenkins_user_name_password {
      username     = var.jenkins.username
      password_ref = var.jenkins.password_ref
    }
  }
}

resource "harness_platform_connector_aws" "this" {
  count = var.aws == null ? 0 : 1

  identifier  = var.aws.identifier
  name        = var.aws.name
  description = var.aws.description
  tags        = var.aws.tags
  org_id      = var.aws.org_id
  project_id  = var.aws.project_id

  manual {
    access_key_ref     = var.aws.access_key_ref
    secret_key_ref     = var.aws.secret_key_ref
    delegate_selectors = var.aws.delegate_selectors
  }
}

resource "harness_platform_connector_helm" "this" {
  count = var.helm == null ? 0 : 1

  identifier         = var.helm.identifier
  name               = var.helm.name
  description        = var.helm.description
  tags               = var.helm.tags
  org_id             = var.helm.org_id
  project_id         = var.helm.project_id
  url                = var.helm.url
  delegate_selectors = var.helm.delegate_selectors

  credentials {
    username     = var.helm.username
    password_ref = var.helm.password_ref
  }
}

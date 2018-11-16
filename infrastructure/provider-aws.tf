provider "aws" {
  assume_role {
    role_arn     = "${var.terraform_role_arn}"
    session_name = "tf-${var.project}-${var.environment}"
  }
}

provider "aws" {
  alias = "main"
}

data "aws_caller_identity" "current" {}

output "account_id" {
  value = "${data.aws_caller_identity.current.account_id}"
}

data "aws_region" "current" {
  current = true
}

output "region" {
  value = "${data.aws_region.current.name}"
}

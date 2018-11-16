variable "terraform_role_arn" {
  type = "string"
  default = ""
  description = "The ARN of the role that terraform should assume in order to operate in the desired AWS account"
}

variable "project" {
  type = "string"
  description = "The name of the project"
}

variable "environment" {
  type = "string"
  description = "The name of the environment within the project"
}

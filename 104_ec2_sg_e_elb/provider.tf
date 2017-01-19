provider "aws" {
  region = "us-east-1"

  assume_role {
    role_arn     = "arn:aws:iam::086256341561:role/devops_pledo_terraform"
    session_name = "terraform_tests"
  }
}

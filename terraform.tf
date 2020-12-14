provider "aws" {
  region  = "us-west-1"
  version = "~> 2.23"
  assume_role {
    role_arn     = "arn:aws:iam::${local.account_id}:role/deployer"
    session_name = "deployer"
  }
}

terraform {
  required_version = ">= 0.12"

  backend "s3" {
    bucket = "multi-account-tf-states"
    region = "us-west-1"
  }
}

provider "aws" {
}

terraform {
  cloud {
    organization = "AztekDev"

    workspaces {
      name = "terraform_aws"
    }
  }
}
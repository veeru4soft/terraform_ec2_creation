provider "aws" {
  region  = var.region
  profile = var.profile
}

terraform {
  required_version = "<=1.3.6"
  required_providers {
    aws = {
      version = "<= 4.0.0"
      source  = "hashicorp/aws"
    }
  }
}

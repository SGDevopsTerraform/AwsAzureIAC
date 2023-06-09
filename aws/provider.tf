terraform {
    required_version = ">= 1.0.0"
required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 4.59.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.sgapp-region
}
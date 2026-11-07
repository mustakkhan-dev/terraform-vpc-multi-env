terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source      = "../../Module/VPC"
  cidr_block  = var.cidr_block
  vpc_name    = var.vpc_name
  environment = var.environment
}

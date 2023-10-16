terraform {
  backend "s3" {
    bucket         = "recipe-app-api-devops-terrastate-1"
    key            = "recipe-app.tfstate"
    region         = "eu-west-2"
    encrypt        = true
    dynamodb_table = "recipe-app-api-devops-tf-state-lock"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.54.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}"
  common_tags = {
    Environment = terraform.workspace
    Project     = var.project
    Owner       = var.contact
    ManagedBy   = "Terraform"
  }
}

data "aws_region" "current" {}
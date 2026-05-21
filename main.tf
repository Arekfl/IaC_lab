terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = var.github_token
}

provider "aws" {
  region = var.regions[0]
}

provider "aws" {
  alias  = "us_west_2"
  region = var.regions[1]
}

resource "aws_ecr_repository" "lab10_repository" {
  name                 = "lab10-ecr-repository"
  image_tag_mutability = "MUTABLE"
  force_delete         = true
}
provider "github" {
  token = var.github_token
}

resource "aws_ecr_repository" "lab10_repository" {
  name                 = "lab10-ecr-repository"
  image_tag_mutability = "MUTABLE"
  force_delete         = true
}
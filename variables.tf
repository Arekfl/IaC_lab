variable "github_token" {
  description = "GitHub Personal Access Token"
  type        = string
  sensitive   = true # Marks this variable as sensitive, preventing it from appearing in logs and console output
}

variable "repository_name" {
  description = "Name of the GitHub repository to create"
  type        = string
  default     = "terraform-managed-repo"
}

variable "repository_description" {
  description = "Description of the GitHub repository"
  type        = string
  default     = "Repository managed by Terraform"
}

variable "publicly_visible" {
  description = "If true, creates a public repository; otherwise private"
  type        = bool
  default     = false
}

variable "regions" {
  description = "AWS regions used for multi-region bucket deployment"
  type        = list(string)
  default     = ["us-east-1", "us-west-2"]
}

variable "bucket_name_prefix" {
  description = "Prefix used to build unique multi-region S3 bucket names"
  type        = string
  default     = "multi-region-bucket"
}
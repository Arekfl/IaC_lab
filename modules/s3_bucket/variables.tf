variable "bucket_name_prefix" {
	description = "Prefix used to build the S3 bucket name"
	type        = string
}

variable "region" {
	description = "AWS region where the bucket is deployed"
	type        = string
}

variable "random_suffix" {
	description = "Random suffix appended to keep bucket names globally unique"
	type        = string
}

variable "lifecycle_days" {
	description = "Number of days before transitioning objects to another storage class"
	type        = number
	default     = 90
}

variable "lifecycle_storage_class" {
	description = "Target storage class used by lifecycle transition"
	type        = string
	default     = "GLACIER"
}

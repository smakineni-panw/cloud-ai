variable "aws_region" {
  description = "The AWS region where resources will be deployed."
  type        = string
  default     = "us-east-1"
}

variable "s3_bucket_name" {
  description = "The globally unique name for the S3 bucket."
  type        = string
}

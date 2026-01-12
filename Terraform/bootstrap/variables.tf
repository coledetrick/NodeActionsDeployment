variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "tf_state_bucket" {
  type        = string
  description = "Name of the S3 bucket for Terraform remote state"
}

variable "tf_lock_table" {
  type        = string
  description = "Name of the DynamoDB table for Terraform state locking"
}

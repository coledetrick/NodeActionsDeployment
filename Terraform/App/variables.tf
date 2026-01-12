variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "project_name" {
  type        = string
  description = "Name used for tagging resources"
  default     = "nodeactionsdeployment"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "key_name" {
  type        = string
  description = "EC2 key pair name used for SSH"
}

variable "public_key" {
  type        = string
  description = "Public key material for the EC2 key pair"
  sensitive   = true
}

variable "ssh_cidr" {
  type        = string
  description = "CIDR allowed to SSH into the instance. For GitHub Actions runners this may need to be 0.0.0.0/0 (not ideal)."
  default     = "0.0.0.0/0"
}

variable "http_cidr" {
  type        = string
  description = "CIDR allowed to reach HTTP (nginx)"
  default     = "0.0.0.0/0"
}

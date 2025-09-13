variable "region" {
  description = "AWS region où créer le VPC"
  type        = string
  default     = "us-east-1"
}

variable "cidr_block" {
  description = "CIDR du VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "name" {
  description = "Nom du VPC"
  type        = string
  default     = "my-vpc"
}

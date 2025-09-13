variable "region" {
  description = "AWS region où créer le VPC"
  type        = string
  default     = "eu-north-1"
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


variable "public_subnet_cidr" {
  description = "CIDR du subnet public"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR du subnet privé"
  type        = string
  default     = "10.0.2.0/24"
}

variable "az_a" {
  description = "Availability Zone pour les subnets"
  type        = string
  default     = "eu-north-1"
}

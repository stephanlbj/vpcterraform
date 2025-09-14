variable "vpc_id" {
  description = "ID du VPC où créer le Security Group"
  type        = string
}

variable "sg_name" {
  description = "Nom du Security Group"
  type        = string
  default     = "default-sg"
}

variable "allowed_ssh_cidrs" {
  description = "Liste des CIDRs autorisés pour SSH"
  type        = list(string)
  default     = ["0.0.0.0/0"] # à restreindre en production
}

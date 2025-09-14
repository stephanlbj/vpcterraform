variable "name" {
  description = "Nom du projet ou du module EC2"
  type        = string
  default     = "my-ec2"
}

variable "ami_id" {
  description = "AMI à utiliser pour les instances"
  type        = string
}

variable "instance_type" {
  description = "Type des instances EC2"
  type        = string
  default     = "t2.micro"
}

variable "public_subnet_id" {
  description = "ID du subnet public"
  type        = string
}

variable "private_subnet_id" {
  description = "ID du subnet privé"
  type        = string
}

variable "sg_id" {
  description = "ID du Security Group à utiliser"
  type        = string
}

output "vpc_id" {
  description = "ID du VPC créé"
  value       = aws_vpc.this.id
}

output "public_subnet_id" {
  description = "ID du subnet public"
  value       = aws_subnet.public.id
}

output "private_subnet_id" {
  description = "ID du subnet privé"
  value       = aws_subnet.private.id
}

output "azs" {
  description = "Liste des Availability Zones utilisées"
  value       = data.aws_availability_zones.available.names
}

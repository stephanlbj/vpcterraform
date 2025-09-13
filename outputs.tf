output "vpc_id" {
  description = "ID du VPC créé"
  value       = aws_vpc.this.id
}

output "sg_id" {
  description = "ID du Security Group créé"
  value       = aws_security_group.this.id
}

output "sg_name" {
  description = "Nom du Security Group"
  value       = aws_security_group.this.name
}

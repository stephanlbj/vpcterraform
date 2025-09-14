output "public_ec2_id" {
  description = "ID de l'EC2 public"
  value       = aws_instance.public.id
}

output "private_ec2_id" {
  description = "ID de l'EC2 privé"
  value       = aws_instance.private.id
}

output "public_ec2_ip" {
  description = "IP publique de l'EC2 public"
  value       = aws_instance.public.public_ip
}

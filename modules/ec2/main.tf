# Récupère la dernière Amazon Linux 2 disponible dans la région
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]  # AMI officielle d'Amazon

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}



# Instance EC2 publique
resource "aws_instance" "public" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.sg_id]

  user_data = <<-EOF
              #!/bin/bash
              apt-get update -y
              apt-get install -y nginx
              echo "<h1>Bienvenue sur le serveur PUBLIC</h1>" > /var/www/html/index.html
              systemctl start nginx
              EOF

  tags = {
    Name = "${var.name}-public"
  }
}

# Instance EC2 privée
resource "aws_instance" "private" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  subnet_id              = var.private_subnet_id
  vpc_security_group_ids = [var.sg_id]

  user_data = <<-EOF
              #!/bin/bash
              apt-get update -y
              apt-get install -y nginx
              echo "<h1>Bienvenue sur le serveur PRIVE</h1>" > /var/www/html/index.html
              systemctl start nginx
              EOF

  tags = {
    Name = "${var.name}-private"
  }
}

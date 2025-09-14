# Instance EC2 publique
resource "aws_instance" "public" {
  ami                    = var.ami_id
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
  ami                    = var.ami_id
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

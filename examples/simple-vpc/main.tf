module "network" {
  source = "../../modules/vpc"
  name   = "prod-vpc"
  cidr_block = "10.0.0.0/16"
  public_subnet_cidr  = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"
}

module "security" {
  source = "../../modules/security"
  vpc_id = module.network.vpc_id
  sg_name = "web-sg"
  allowed_ssh_cidrs = ["123.45.67.89/32"]
}

module "instances" {
  source            = "../../modules/ec2"
  name              = "webapp"
  ami_id            = "ami-12345678"
  instance_type     = "t2.micro"
  public_subnet_id  = module.network.public_subnet_id
  private_subnet_id = module.network.private_subnet_id
  sg_id             = module.security.sg_id
}

output "public_ip" {
  value = module.instances.public_ec2_ip
}

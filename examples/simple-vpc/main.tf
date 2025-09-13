module "vpc" {
  source     = "../.."
  region     = "us-east-1"
  cidr_block = "10.1.0.0/16"
  name       = "example-vpc"
}

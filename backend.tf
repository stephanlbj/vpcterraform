terraform {
  backend "s3" {
    bucket         = "terraform-state-vpc-eu-z1"    # ton bucket S3 existant
    key            = "vpc/terraform.tfstate"  # chemin du state
    region         = "eu-north-1"
    dynamodb_table = "terraform-locks"        # table DynamoDB pour le lockS
    encrypt        = true
  }
}

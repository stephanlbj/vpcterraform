terraform {
  backend "s3" {
    bucket         = "terraform-state-vpc"    # ton bucket S3 existant
    key            = "vpc/terraform.tfstate"  # chemin du state
    region         = "eu-north-1"
    dynamodb_table = "terraform-locks"        # table DynamoDB pour le lock
    encrypt        = true
  }
}

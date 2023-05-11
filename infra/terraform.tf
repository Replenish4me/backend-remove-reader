provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "bucket-backend-terraform-caioruiz"
    key    = "backend-remove-reader/terraform.tfstate"
    region = "sa-east-1"
  }
}
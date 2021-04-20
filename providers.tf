provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "javhome-tf-121234567"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "website_s3_bucket" {
  source = "./module/aws-s3-static-website-bucket"
  bucket_name = "websitemetalcorp2021"
  tags = var.tags
}
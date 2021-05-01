data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server*"]
  }

  owners = [var.owners_ami]
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.0.0"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.vpc_azs
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets

  enable_nat_gateway = var.vpc_enable_gateway

  tags = var.vpc_tags
}

module "ec2_instaces" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.17.0"

  name           = var.ec2_name_cluster
  instance_count = var.ec2_instaces_count

  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.ec2_instaces_type
  key_name               = var.ec2_instaces_key
  vpc_security_group_ids = [module.vpc.default_security_group_id]
  subnet_id              = module.vpc.public_subnets[0]

  tags = var.vpc_tags
}
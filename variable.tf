# Variables para VPC

variable "owners_ami" {
  type        = string
  default     = "099720109477"
  description = "ID conta da canonica"
}

variable "vpc_name" {
  type        = string
  default     = "vpc-metal-corp"
  description = "VPC aplicação metal.corp"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.7.0.0/16"
  description = "Bloco de endereço para vpc"
}

variable "vpc_azs" {
  type        = list(string)
  default     = ["us-east-2a", "us-east-2b"]
  description = "Availability zone para vpc"
}

variable "vpc_private_subnets" {
  type        = list(string)
  default     = ["10.7.1.0/24", "10.7.2.0/24"]
  description = "Subnet privada para vpc"
}

variable "vpc_public_subnets" {
  type        = list(string)
  default     = ["10.7.100.0/24", "10.7.101.0/24"]
  description = "Subnet public para vpc"
}

variable "vpc_enable_gateway" {
  type        = bool
  default     = true
  description = "Habilita nat gateway para vpc"
}

variable "vpc_tags" {
  type        = map(string)
  description = "Tags para ambiente"
  default = {
    Name      = "WEB"
    Tipo      = "Producao"
    Sistema   = "Metal.Corp"
    Terraform = "Sim"
  }
}

# Variables para EC2

variable "ec2_name_cluster" {
  type        = string
  default     = "WEB.METAL.CORP"
  description = "Nome do cluster ec2"
}

variable "ec2_instaces_count" {
  type        = number
  default     = 2
  description = "Quantidade de instâncias ec2"
}

variable "ec2_instaces_type" {
  type        = string
  default     = "t2.nano"
  description = "Tipo de instância para cluster"
}

variable "ec2_instaces_key" {
  type        = string
  default     = "ansible"
  description = "Chave de acesso ssh"
}
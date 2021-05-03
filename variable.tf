variable "tags" {
  type        = map(string)
  description = "Tags para ambiente"
  default = {
    Name      = "WEB"
    Tipo      = "Producao"
    Sistema   = "Metal.Corp"
    Terraform = "Sim"
  }
}
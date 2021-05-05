variable "region" {
    type = string
    default = "us-east-2"
    description = "This is the cloud hosting region where your webapp will be deployed."
}

variable "prefix" {
    type = string
    default = "devops"
    description = "This is the environment your webapp will be prefixed with. dev, qa, or prod"
}

variable "name" {
    type = string
    default = "app-metal.corp"
    description = "Your name to attach to the webapp address"
}
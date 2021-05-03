variable "bucket_name" {
  description = "Name of the s3 bucket. Must be unique."
  type = string
}

variable "tags" {
  type        = map(string)
  description = "Tags para ambiente"
  default = {}
}
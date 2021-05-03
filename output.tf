output "website_bucket_arn" {
  description = "ARN da bucket s3"
  value       = module.website_s3_bucket
}

output "website_bucket_name" {
  description = "Name da bucket s3"
  value       = module.website_s3_bucket.name
}

output "website_bucket_domain" {
  description = "Domain da bucket s3"
  value       = module.website_s3_bucket.domain
}

output "localstack_bucket_index_file" {
  description = "Local do arquivo index localstack"
  value       = "http://localhost:4566/${module.website_s3_bucket.name}/index.html"
}
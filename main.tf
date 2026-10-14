module "s3_website" {
  source            = "./modules/s3-website"
  enable_versioning = true
  bucket_name       = "pgr301-terraform-rich-2" # Bytt til noe globalt unikt (f.eks. ditt-navn-pgr301-website)

  tags = {
    Name         = "PGR301 Lab"
    Environment  = "Demo"
    ManagedBy    = "Terraform"
    Pipelinetest = "true"
  }
}

output "s3_website_url" {
  value       = module.s3_website.website_url
  description = "URL for the S3 hosted website"
}

output "bucket_name" {
  value       = module.s3_website.bucket_name
  description = "Name of the S3 bucket"
}

module "s3_website_two" {
  source      = "./modules/s3-website"
  bucket_name = "ola-nordmann-pgr301-website-3" # Må være globalt unikt, bruk ditt eget prefiks


  tags = {
    Name        = "PGR301 Lab - Nettside 2"
    Environment = "Demo"
    ManagedBy   = "Terraform"
  }
}

output "s3_website_two_url" {
  value       = module.s3_website_two.website_url
  description = "URL for den andre S3-hostede nettsiden"
}



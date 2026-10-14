terraform {
  backend "s3" {
    bucket       = "pgr301-terraform-rich"
    key          = "rich/website/terraform.tfstate"
    region       = "eu-north-1"
    use_lockfile = true
    encrypt      = true

  }
}
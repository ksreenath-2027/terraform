terraform {
  backend "s3" {
    bucket       = "terraform-state-bucket-sreenath214"
    key          = "ec2/terraform.tfstate"
    region       = "us-west-2"
    encrypt      = true
    use_lockfile = true
  }
}
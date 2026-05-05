provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
}

module "sg" {
  source   = "./modules/security-group"
  vpc_id   = module.vpc.vpc_id
  ssh_cidr = ["0.0.0.0/0"]
}

module "ec2" {
  source        = "./modules/ec2"
  subnet_id     = module.vpc.subnet_id
  sg_id         = module.sg.sg_id
  instance_type = var.instance_type
  instance_name = var.instance_name
}
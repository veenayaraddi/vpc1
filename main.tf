module "vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
  region      = var.region
}

module "instance" {
  source          = "./modules/instance"
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = module.vpc.subnet_id
  security_group_id = module.vpc.security_group_id
}


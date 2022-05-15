provider "google" {
  project                 = var.project
  region                  = var.region
  credentials             = var.google_credentials
}

module "my_vpc_prd-fe" {
  source = "../modules/networks"
  vpc_name = "${var.env}-vpc-fe"
  vpc_region  = var.region
  subnet_name = "${var.env}-subnet-fe"
  subnet_ip_cidr = "10.130.0.0/16"
  subnet_secondary_name = "${var.env}-secondary-subnet-fe"
  subnet_secondary_range = "192.168.30.0/24"
}

module "my_vpc_prd-be" {
  source = "../modules/networks"
  vpc_name = "${var.env}-vpc-be"
  vpc_region  = var.region
  subnet_name = "${var.env}-subnet-be"
  subnet_ip_cidr = "10.140.0.0/16"
  subnet_secondary_name = "${var.env}-secondary-subnet-be"
  subnet_secondary_range = "192.168.40.0/24"
}
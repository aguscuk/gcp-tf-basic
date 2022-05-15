provider "google" {
  project                 = var.project
  region                  = var.region
  credentials             = var.google_credentials
}

module "my_vpc_dev" {
  source = "../modules/networks"
  vpc_name = "${var.env}-vpc"
  vpc_region  = var.region
  subnet_name = "${var.env}-subnet"
  subnet_ip_cidr = "10.100.0.0/16"
  subnet_secondary_name = "${var.env}-secondary-subnet"
  subnet_secondary_range = "192.168.10.0/24"
}
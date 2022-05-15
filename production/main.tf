provider "google" {
  project                 = var.project
  region                  = var.region
  credentials             = var.google_credentials
}

module "my_vpc_prd" {
  source = "../modules/networks"
  vpc_name = "${var.env}-vpc"
}
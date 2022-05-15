terraform {
  required_version = ">= 0.12"
}


## --------- START VPC --------------- ##
variable "vpc_name" {
  description = "vpc name"
}
variable "vpc_region" {
  description = "vpc region"
}
variable "subnet_name" {
  description = "subnet name"
}

variable "subnet_ip_cidr" {
  description = "subnet_ip_cidr"
}

variable "subnet_secondary_name" {
  description = "subnet_secondary_name"
}

variable "subnet_secondary_range" {
  description = "subnet_secondary_range"
}

resource "google_compute_network" "my_vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "my_subnet" {
  name                    = var.subnet_name
  ip_cidr_range           = var.subnet_ip_cidr
  network                 = google_compute_network.my_vpc.id
  region = var.vpc_region
  secondary_ip_range {
      range_name          = var.subnet_secondary_name
      ip_cidr_range       = var.subnet_secondary_range
  }
}

## --------- END VPC --------------- ##
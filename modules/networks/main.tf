terraform {
  required_version = ">= 0.12"
}

variable "vpc_name" {
  description = "Nama VPC"
}
resource "google_compute_network" "my_vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
}
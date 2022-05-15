provider "google" {
  project                 = var.project
  region                  = var.region
  credentials             = var.google_credentials
}

resource "google_compute_network" "my_vpc" {
  name                    = "${var.env}-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "my_subnet_01" {
  name                    = "${var.env}-${var.subnet_ip_cidr[0].name}"
  ip_cidr_range           = var.subnet_ip_cidr[0].range
  network                 = google_compute_network.my_vpc.id
  region = var.region
  secondary_ip_range {
      range_name          = "${var.env}-${var.subnet_secondary[0].name}"
      ip_cidr_range       = var.subnet_secondary[0].range
  }
}

data "google_compute_network" "default" {
    name                  = var.vpc_default
}

resource "google_compute_subnetwork" "my_subnet_02" {
  name                    = "${var.env}-${var.subnet_ip_cidr[1].name}"
  ip_cidr_range           = var.subnet_ip_cidr[1].range
  network                 = data.google_compute_network.default.id
  region                  = var.region
}

resource "google_compute_firewall" "my_fw_web" {
  name                    = "${var.env}-${var.my_fw_web}"
  network                 = google_compute_network.my_vpc.name

  allow {
    protocol              = "tcp"
    ports                 = ["80", "443"]
  }
  source_tags             = ["web"]
}

resource "google_compute_firewall" "my_fw_ssh" {
  name                    = "${var.env}-${var.my_fw_ssh}"
  network                 = google_compute_network.my_vpc.name

  allow {
    protocol              = "tcp"
    ports                 = ["22"]
  }
  source_tags             = ["ssh"]
}
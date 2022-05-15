# output "google_credentials" {
#   value = var.google_credentials
# }
output "my_network_id" {
  value = google_compute_network.my_vpc.id
}
output "my_subnet_gw" {
  value = google_compute_subnetwork.my_subnet_01.gateway_address
}

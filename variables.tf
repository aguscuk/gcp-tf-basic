variable "google_credentials" {
    description = "google service account credential"
}
variable "env" {
    description = "nama environment"
}
variable "vpc_default" {
    description = "default vpc name"
}
variable "my_fw_web" {
    description = "firewall name web"
}
variable "my_fw_ssh" {
    description = "firewall name ssh"
}
variable "region" {
    description = "nama region jakarta"
}
variable "project" {
    description = "nama project"
}
variable "subnet_name" {
    description = "nama subnet"
    type = list(string)
}
variable "subnet_ip_cidr" {
    description = "subnet"
    type = list(object({
        range = string
        name = string
    }))
}

variable "subnet_secondary" {
    description = "subnet"
    type = list(object({
        range = string
        name = string
    }))
}
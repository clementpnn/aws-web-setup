resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  project                 = var.project_id
  auto_create_subnetworks = false
}
resource "google_compute_subnetwork" "subnet_fr" {
  name          = "subnet-fr"
  ip_cidr_range = var.subnet_cidr_fr
  network       = google_compute_network.vpc.self_link
  region        = var.region_fr
}
resource "google_compute_subnetwork" "subnet_de" {
  name          = "subnet-de"
  ip_cidr_range = var.subnet_cidr_de
  network       = google_compute_network.vpc.self_link
  region        = var.region_de
}

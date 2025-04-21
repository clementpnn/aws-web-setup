resource "google_compute_instance" "instance_fr" {
  name         = "instance-fr"
  machine_type = var.machine_type
  zone         = var.zone_fr
  boot_disk {
    initialize_params {
      image = data.google_compute_image.debian_latest.self_link
      size  = 10
      type  = "pd-balanced"
    }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.subnet_fr.self_link
    access_config {}
  }
  metadata = {
    ssh-keys = "${var.ansible_user}:${var.ssh_public_key}"
  }
}
resource "google_compute_instance" "instance_de" {
  name         = "instance-de"
  machine_type = var.machine_type
  zone         = var.zone_de
  boot_disk {
    initialize_params {
      image = data.google_compute_image.debian_latest.self_link
      size  = 10
      type  = "pd-balanced"
    }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.subnet_de.self_link
    access_config {}
  }
  metadata = {
    ssh-keys = "${var.ansible_user}:${var.ssh_public_key}"
  }
}

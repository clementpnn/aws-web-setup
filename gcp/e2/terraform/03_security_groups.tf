resource "google_compute_firewall" "allow_ssh" {
  name    = "allow-ssh"
  network = google_compute_network.vpc.self_link
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["0.0.0.0/0"]
  description   = "Autorise SSH depuis l'extérieur"
}
resource "google_compute_firewall" "allow_http_https" {
  name    = "allow-http-https"
  network = google_compute_network.vpc.self_link
  allow {
    protocol = "tcp"
    ports    = ["80", "443", "81"]
  }
  source_ranges = ["0.0.0.0/0"]
  description   = "Autorise HTTP/HTTPS depuis l'extérieur"
}

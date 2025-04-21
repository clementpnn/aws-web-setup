output "fr_instance_public_ip" {
  description = "Adresse IP publique de l'instance en France"
  value       = google_compute_instance.instance_fr.network_interface[0].access_config[0].nat_ip
}
output "de_instance_public_ip" {
  description = "Adresse IP publique de l'instance en Allemagne"
  value       = google_compute_instance.instance_de.network_interface[0].access_config[0].nat_ip
}

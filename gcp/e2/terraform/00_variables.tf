variable "project_id" {
  description = "ID du projet GCP"
  type        = string
  default     = "axial-reference-447820-m6"
}
variable "region_fr" {
  description = "Région GCP pour la France"
  type        = string
  default     = "europe-west9"
}
variable "zone_fr" {
  description = "Zone GCP pour la France"
  type        = string
  default     = "europe-west9-b"
}
variable "region_de" {
  description = "Région GCP pour l'Allemagne"
  type        = string
  default     = "europe-west3"
}
variable "zone_de" {
  description = "Zone GCP pour l'Allemagne"
  type        = string
  default     = "europe-west3-a"
}
variable "machine_type" {
  description = "Type de machine (équivalent instance_type sur AWS)"
  type        = string
  default     = "e2-micro"
}
variable "vpc_name" {
  description = "Nom du VPC"
  type        = string
  default     = "multi-region-vpc"
}
variable "vpc_cidr" {
  description = "CIDR global du VPC"
  type        = string
  default     = "10.0.0.0/16"
}
variable "subnet_cidr_fr" {
  description = "CIDR pour le subnet en France"
  type        = string
  default     = "10.0.1.0/24"
}
variable "subnet_cidr_de" {
  description = "CIDR pour le subnet en Allemagne"
  type        = string
  default     = "10.0.2.0/24"
}
variable "ssh_public_key" {
  description = "Contenu de la clé publique SSH"
  type        = string
  sensitive   = true
}
variable "ansible_user" {
  description = "Utilisateur pour la connexion SSH sur la VM"
  type        = string
  default     = "admin"
}
variable "adiarra_email" {
  description = "Email de Adiarra"
  type        = string
  sensitive   = true
}
variable "avisage_email" {
  description = "Email de Avisage"
  type        = string
  sensitive   = true
}
variable "mdesruets_email" {
  description = "Email de Mdesruets"
  type        = string
  sensitive   = true
}
variable "db_user" {
  type        = string
  description = "User for the database"
  sensitive   = true
}
variable "db_password" {
  type        = string
  description = "Password for the database"
  sensitive   = true
}
variable "db_name" {
  type        = string
  description = "Name of the database"
}

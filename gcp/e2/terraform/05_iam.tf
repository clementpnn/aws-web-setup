resource "google_project_iam_member" "adiarra_editor" {
  project = var.project_id
  role    = "roles/editor"
  member  = "user:${var.adiarra_email}"
}

resource "google_project_iam_member" "avisage_editor" {
  project = var.project_id
  role    = "roles/editor"
  member  = "user:${var.avisage_email}"
}

resource "google_project_iam_member" "mdesruets_editor" {
  project = var.project_id
  role    = "roles/editor"
  member  = "user:${var.mdesruets_email}"
}

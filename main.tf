resource "google_project_service" "run_ssynergy" {
  service = var.service

  disable_on_destroy = true
}

resource "google_cloud_run_v2_service" "alpha_service" {
  name     = var.project
  location = var.region
  ingress  = var.ingress

  template {
    containers {
      image = var.image
    }
  }
}

resource "google_cloud_run_v2_service_iam_member" "member" {
  project  = google_cloud_run_v2_service.alpha_service.project
  location = google_cloud_run_v2_service.alpha_service.location
  name     = google_cloud_run_v2_service.alpha_service.name
  role     = var.role
  member   = var.member
}
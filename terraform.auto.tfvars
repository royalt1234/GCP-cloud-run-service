project = "ssynergy"
region  = "us-central1"
service = "run.googleapis.com"
ingress = "INGRESS_TRAFFIC_ALL"
image   = "wordpress:php8.2-apache"
role    = "roles/viewer"
member  = "allAuthenticatedUsers"
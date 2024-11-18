# GCP provider
# Please include your Google Cloud Service Account Secret .JSON key file in the directory
provider "google" {
  credentials  = file(var.gcp_svc_key)
  project      = var.gcp_project
  region       = var.gcp_region
}


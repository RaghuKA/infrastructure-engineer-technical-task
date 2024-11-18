
resource "google_compute_network" "vpc" {
  name = "infrastructure-vpc"
}

resource "google_compute_subnetwork" "subnet" {
  name          = "my-subnet"
  ip_cidr_range = "10.0.0.0/16"
  region        = "europe-central2"
  network       = google_compute_network.vpc.id
}

resource "google_container_cluster" "primary" {
  name     = "infratructure-gke-cluster"
  location = "europe-central2"

  remove_default_node_pool = true
  initial_node_count       = 1
  deletion_protection = false
}

resource "google_sql_database_instance" "sql_instance" {
  name             = "infrastructure-database-instance"
  database_version = "POSTGRES_14"
  region           = "europe-central2"

  settings {
    tier            = "db-f1-micro"
    ip_configuration {
      ipv4_enabled    = false
      private_network = google_compute_network.vpc.id
    }
  }
}

resource "google_sql_database" "database" {
  name     = "infrastructure_db"
  instance = google_sql_database_instance.sql_instance.name
}

# Allow HTTPS traffic from anywhere
resource "google_compute_firewall" "allow_https" {
  name    = "allow-https"
  network = google_compute_network.vpc.id

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  source_ranges = ["0.0.0.0/0"] # Allow traffic from anywhere
}

# Allow VPN traffic from specific IPs
resource "google_compute_firewall" "allow_vpn" {
  name    = "allow-vpn"
  network = google_compute_network.vpc.id

  allow {
    protocol = "tcp"
    ports    = ["443", "6443"] # GKE API server and VPN-related traffic
  }

  source_ranges = var.allowed_ips
}

resource "google_compute_vpn_gateway" "vpn_gateway" {
  name    = "vpn-gateway"
  region  = "europe-central2"
  network = google_compute_network.vpc.id
}
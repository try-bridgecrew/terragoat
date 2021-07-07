resource google_sql_database_instance "master_instance" {
  name             = "terragoat-${var.environment}-master"
  database_version = "POSTGRES_11"
  region           = var.region

  settings {
    tier = "db-f1-micro"
    ip_configuration {
      ipv4_enabled = true
      authorized_networks {
        name  = "WWW"
        value = "0.0.0.0/0"
      }
    }
    backup_configuration {
      enabled = false
    }
  }
}


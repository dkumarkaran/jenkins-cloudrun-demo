provider "google" {
    project = "ce-ps-3team"
    region = "us-central1"
}

resource "google_cloud_run_service" "default" {
  name     = "cloudrun-srv"
  location = "us-central1"

  template {
    spec {
      containers {
        image = "gcr.io/ce-ps-3team/karan-demo:${var.tags}"
        ports {
          container_port = 80
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}
variable "tags" {
  type= string   
}    

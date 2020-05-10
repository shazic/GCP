resource "google_compute_instance" "solr" {
  name         = "learn-machine-1"
  machine_type = var.machine_type
  description  = "Create a first google vm for learning gcp"

  desired_status = "RUNNING"

  tags = var.tags

  labels = var.machine_labels

  boot_disk {
    auto_delete = true
    device_name = var.device_name

    initialize_params {
      image = var.boot_image
      type  = var.disk_type
    }
  }

  allow_stopping_for_update = true

  network_interface {
    network = var.network
    access_config {
      # network_tier = "STANDARD"
    }
  }
}
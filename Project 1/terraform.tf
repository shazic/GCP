terraform {
  backend "gcs" {
    bucket  = "tf-state-mumbai"
    prefix  = "state/learn"
    credentials = "../learn-terraform.json"
  }
  required_version = "~>0.12.0"
  required_providers {
    google = "~> 3.20.0"
  }
}
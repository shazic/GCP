provider "google" {
  credentials = file("../learn-terraform.json")
  project     = "project-id"
  region      = "asia-south1"
  zone        = "asia-south1-b"
}
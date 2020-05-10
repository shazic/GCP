provider "google" {
  credentials = file("../learn-terraform.json")
  project     = "bold-gadget-222718"
  region      = "asia-south1"
  zone        = "asia-south1-b"
}
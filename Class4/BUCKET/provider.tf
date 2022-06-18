provider "google" {
    region = "us-central1"
}


resource "random_string" "random" {
	length = 14
	special = false
	upper = false
}



resource "google_storage_bucket" "static-site" {
  name          = "image-store-${random_string.random.result}"
  location      = "EU"  # US # ASIA
  force_destroy = true
}
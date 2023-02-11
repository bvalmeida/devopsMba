resource "random_id" "prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "default" {
  name          = "uniesp-pos-fullstack-${random_id.prefix.hex}"
  force_destroy = false
  storage_class = "STANDARD"
  location = "US"

  versioning {
    enabled = true
  }
}
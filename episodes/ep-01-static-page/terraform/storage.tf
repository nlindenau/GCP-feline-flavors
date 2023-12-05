resource "google_storage_bucket" "fancy-feline-deli-static-page" {
  name          = var.bucket_name
  location      = var.region
  force_destroy = true

  uniform_bucket_level_access = true

}

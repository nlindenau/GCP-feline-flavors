# This resource controls our bucket
# You need to modify this resource
resource "google_storage_bucket" "fancy-feline-deli-static-page" {
  name     = var.bucket_name
  location = var.region

  #When deleting your bucket, Terraform will also delete the objects stored inside the bucket
  force_destroy = true

  uniform_bucket_level_access = true

  #This blocks allows you to use a file stored in the bucket as a static web page
  website {
    main_page_suffix = "" # Fill in the name of the file in Cloud Storage, which will be used as the landing page
  }
}


#This resource uploads the html file to our bucket
#You need to modify this resource
resource "google_storage_bucket_object" "page" {
  name   = "" # Fill in the file name, under which the object will be stored in Cloud Storage
  source = "" # Fill in the relative path to index.html file on your computer
  bucket = google_storage_bucket.fancy-feline-deli-static-page.name
}

#This resource uploads the picture file to our bucket
#You need to modify this resource
resource "google_storage_bucket_object" "picture" {
  name   = "" # Fill in the file name, under which the object will be stored in Cloud Storage
  source = "" # Fill in the relative path to cat.jpeg file on your computer
  bucket = google_storage_bucket.fancy-feline-deli-static-page.name
}

# This resource allows all users to view the contents of the bucket.
# You do not need to modify this resource
resource "google_storage_bucket_iam_member" "all_users" {
  bucket = google_storage_bucket.fancy-feline-deli-static-page.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}
# This resource controls our bucket
# You need to modify this resource.
resource "google_storage_bucket" "fancy-feline-deli-static-page" {
  name          = var.bucket_name
  location      = var.region

  #When deleting your bucket, Terraform will also delete the objects stored inside the bucket
  force_destroy = true

  uniform_bucket_level_access = true  

  #This blocks allows you to use a file stored in the bucket as a static web page
  website {
    main_page_suffix = "index.html" # What is the file name of the main page?
  }
}

# This is an access control rule that allows all users to Read the objects inside our bucket
# You do not need to modify this resource.
resource "google_storage_bucket_acl" "image-store-acl" {
  bucket = google_storage_bucket.image-store.name

  role_entity = [
    "OWNER:user-my.email@gmail.com",
    "READER:group-mygroup",
  ]
}

#This resource uploads the html file to our bucket
resource "google_storage_bucket_object" "page" {
  name   = "index.html"
  source = "../html/index.html"
  bucket = google_storage_bucket.fancy-feline-deli-static-page.name
}

#This resource uploads the picture file to our bucket
resource "google_storage_bucket_object" "picture" {
  name   = "cat.jpeg"
  source = "../html/cat.jpeg"
  bucket = google_storage_bucket.fancy-feline-deli-static-page.name
}

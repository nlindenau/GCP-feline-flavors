#This block will create a resource in Google Cloud
#Resource denotes that the block will be declaring a resource 
#google_storage_bucket is a type of resource to be created. 
#You can check the available resource types in the provider documentation: https://registry.terraform.io/providers/hashicorp/google/latest/docs
#feline-flavors-deli-bucket is the name of the resource that Terraform uses
#Each resource has to have a unique name and it does not have to be the same as the name of the resource in the cloud

resource "google_storage_bucket" "feline-flavors-deli-bucket" {
  #This configures the resource name in Google Cloud
  name = var.bucket_name
  #This configures in which region the resource will be created
  location = var.region

  #When deleting your bucket, Terraform will also delete the objects stored inside the bucket
  force_destroy = true
}

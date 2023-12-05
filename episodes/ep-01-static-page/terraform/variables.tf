variable "project" {
  type        = string
  description = "This is your unique project ID in GCP. You can find it in GCP console."
  #If you do not want to enter your project ID when running terraform operations, you could pass the value as default.
  #default=""
}

# You can find region and zones here: https://cloud.google.com/compute/docs/regions-zones
variable "region" {
  type        = string
  description = "Region is a geography, in which your resources will be created. Choose one that is close to where you are in the world."
  #If you do not want to enter your region when running terraform operations, you could pass the value as default.
  #default=""
}
variable "zone" {
  type        = string
  description = "Zone is a smaller division within region. Some resources are zonal, as opposed to just regional or global."
  #If you do not want to enter your zone when running terraform operations, you could pass the value as default.
  #default=""
}

variable "bucket_name" {
  type        = string
  description = "This is a bucket for your Cloud Storage Bucket. It must be globally unique."
  #If you do not want to enter your bucket when running terraform operations, you could pass the value as default.
  #default=""
}
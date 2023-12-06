# This block configures the Google Cloud provider 

provider "google" {
  #Project is a "container" for your GCP resources. It is globally unique.
  project = var.project #var means that instead of hardcoding the value, Terraform will use an input variable
  #Region is a geography in which the resources will be created
  #Example regions are "europe-north1" (Hamina, FI) and "europe-central2" (Warsaw, PL)
  region = var.region
  #Zone is a smaller part of a region. A region can have many zones.
  #Example zones are "europe-north1-a" and "europe-central2-b"
  zone = var.zone
  #You can find regions and zones here: https://cloud.google.com/compute/docs/regions-zones
}
#This block tells Terraform, which providers we will be using
#Provider is a ready made abstraction of API, which allows you to interact with the API using Terraform
#We will be using Google provider to interact with Google Cloud APIs

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.8.0"
    }
  }
}
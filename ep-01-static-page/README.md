# Episode 01 - a static web page

Eppu knew that Rome wasn't built in a day. So he decided to start small and host a simple static web page to help other cats find his info and order treats from the Fancy Feline Deli by calling or sending him a message (hopefully not by a pigeon - Eppu was not a big fan of birds!).

He asked his good friend ChatGPT to create him a simple static web page. Now it is up to you to help him get that page out to the world.

Now, there are multiple ways in which one can host a webpage in GCP. But for a simple static page, like the one that Eppu created with ChatGPT, we can use a simple and cost effective solution. 

Cloud Storage is a GCP managed storage solution. If you are familiar with other cloud providers, it is the same family of products as AWS S3 and Azure Blob storage. You can learn more about Cloud Storage [here](https://cloud.google.com/storage?hl=en). 

We can store our simple page as an object in Cloud Storage bucket and expose it as a static web page. This solution requires very little architecture configuration and is cost effective.


# What do I need to do?

Chief Cat Engineer at Fancy Feline Deli has prepared a boilerplate Terraform code for you. He has configured basic Terraform settings in main.tf, planned what kind of input variables are needed with variables.tf and set up the provider block in providers.tf. 
It is your turn to get the infrastructure up and running by modifying the Terraform code to match the needs of the page. The Cat Engineer did leave helpful tips on what exactly you need to do in the form of code comments. 

1. Inspect the code in the Terraform folder and identify what do you need to do in order to get the code running. 
2. Initialize your terraform workspace with `terraform init` 

# What did I learn?
- Cloud Storage as terraform resource 
- Uploading files to Cloud Storage using Terraform 
- Exposing Cloud Storage files as a static web page

# 🐾 Special treats 🐾 

# Disclaimers 
Files `index.html` and `cat.jpeg` were generated using AI.


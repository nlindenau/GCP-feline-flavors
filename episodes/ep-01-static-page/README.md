# Episode 01 - a static web page

Eppu knew that Rome wasn't built in a day. So he decided to start small and host a simple static web page to help other cats find his info and order treats from the Fancy Feline Deli by calling or sending him a message (hopefully not by a pigeon - Eppu was not a big fan of birds!).

He asked his good friend ChatGPT to create him a simple static web page. Now it is up to you to help him get that page out to the world.

Now, there are multiple ways in which one can host a webpage in GCP. But for a simple static page, like the one that Eppu created with ChatGPT, we can store our simple page as an object in Cloud Storage bucket and expose it as a static web page. This solution requires very little architecture configuration and is cost effective. Handy!

# Theory

Cloud Storage is a GCP managed storage solution. You can think that Cloud Storage is like a hard drive on your laptop, where you put all kinds of files that are all kinds of sizes.

If you are familiar with other cloud providers, it is the same family of products as AWS S3 and Azure Blob storage.

A container for you files in Cloud Storage is called a bucket. The bucket needs to have a globally unique name. There are a few alternatives when it comes to choosing where your bucket will be located - it can be regional, dual-regional and multi-regional. 

You can store your files directly in the bucket, or create folders within the bucket to organize them.

It is of course important to control who can access your data. You can either configure the access one the bucket level (uniform access control) or on singular file level (fine-grained access control). You can also disable public Internet access to the bucket - but keep in mind, this will make hosting our static web page impossible.

# What do I need to do?

Chief Cat Engineer at Fancy Feline Deli has prepared a boilerplate Terraform code for you. He has configured basic Terraform settings in main.tf, planned what kind of input variables are needed with variables.tf and set up the provider block in providers.tf. 
It is your turn to get the infrastructure up and running by modifying the Terraform code to match the needs of the page. The Cat Engineer did leave helpful tips on what exactly you need to do in the form of code comments. 

1. Inspect the code in the Terraform folder and identify what do you need to do in order to get the code running. 
2. Initialize your terraform workspace with `terraform init` 
3. Expand the Terraform configuration according to the comments in the code.
4. Inspect the incoming changes 

# What did I learn?
- Cloud Storage as terraform resource 
- Uploading files to Cloud Storage using Terraform 
- Exposing Cloud Storage files as a static web page

# 🐾 Special treats 🐾 
- You can learn more about Cloud Storage [here](https://cloud.google.com/storage?hl=en). 

# Disclaimers 
Files `index.html` and `cat.jpeg` were generated using AI.


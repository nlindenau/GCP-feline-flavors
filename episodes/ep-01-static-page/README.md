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

Let's deploy our static web page to Google Cloud Platform! 

Chief Cat Engineer Eppu at Fancy Feline Deli has prepared a boilerplate Terraform code for you. 
In the `main.tf` file, he has listed the Terraform providers that are needed to run the code.
In the `providers.tf` he has configured the Google provider, to let Terraform know where will the resources be deployed. 
In the `variables.tf`, he has listed the input variables that the Terraform code needs.
Finally, in `storage.tf` he has drafted the Cloud Storage resources. This is the main file that you will be working with in this episode.

It is your turn to get the infrastructure up and running by modifying the Terraform code to match the needs of the page. The Cat Engineer did leave helpful tips on what exactly you need to do in the form of code comments. The comments also include tips and explanations on things, that might not be obvious at first glance.

1. In your console, navigate inside the `terraform` folder.
2. Inspect the code in the Terraform folder and identify what do you need to do in order to get the code running.
You need to change 3 resources (the bucket, the page file, and the picture file). There are in total 5 changes you need to make.
3. Initialize Terraform with `terraform init`.
4. Expand the Terraform configuration according to the comments in the code.
5. Inspect the incoming changes by running `terraform plan`. Does the output in your console look like you have expected?
6. Run `terraform apply` to perform infrastructure changes. When prompted, type `yes`.
7. Navigate to Google Cloud Platform Console, search for `Cloud Storage` and find your newly created bucket. Navigate inside the bucket and find the link to your page (index.html), copy the URL and open it in your browser.

After you are done with this challenge, you can remove your resources by running `terraform destroy`.

# What did I learn?
- Cloud Storage as GCP service
- Cloud Storage as Terraform resource 
- Uploading files to Cloud Storage using Terraform 
- Exposing Cloud Storage files as a static web page

# 🐾 Special treats 🐾 
- You can learn more about Cloud Storage [here](https://cloud.google.com/storage?hl=en). 

# Disclaimers 
Files `index.html` and `cat.jpeg` were generated using AI.


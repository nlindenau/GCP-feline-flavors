# Episode 00 - pilot

Eppu was an orange Siberian cat with a big dream - to make the best cat snack shop the world has ever seen. He loved all kind of snacks and was very passionate about sharing his love with the world and providing all cats with the greatest bites. 

Feline Flavors Deli started small, with Eppu selling his snacks to other cats in Espoo City, but the brave orange kitty got such good feedback from customers that he got brave and wanted to expand his business and move to the digital world. Smart move!

Besides having a knack for business, Eppu was quite tech-savvy (he has spent a lot of time napping on laptops and tablets). He has researched his options and decided to go with building his business in the cloud - so he could easily scale up and match the needs of the feline fellowship worldwide. Google Cloud Platform has stood out as a cloud provider, due to clear pricing policies, broad offering and easily understandable services. Eppu was also impressed with the environmental efforts by Google Cloud, and a Low CO2 computing sounded like a responsible choice.

Being a small business owner is no easy task! But the orange feline was resourceful. He knew that balancing making snacks, marketing, customer service and building the cloud architecture would be much easier if he had others helping him on his journey. After all, life is easier with friends. He has asked you to help him with the cloud architecture - he has his vision for it, and would like you to help with the nitty-gritty details of implementing it. 

As exciting as it is to start a new project, you need to first get your setup in order! 

Before embarking on the journey to make Feline Flavors Deli greatest cat snack business, Eppu wanted you to be familiar with the general workflow of building GCP architecture with Terraform, so he prepared a very simple setup that you can try deploying yourself. 

# Theory



# What do I need to do?

Let's deploy our static web page to Google Cloud Platform! 

Chief Cat Engineer Eppu at Feline Flavors Deli has prepared a boilerplate Terraform code for you. 
In the `main.tf` file, he has listed the Terraform providers that are needed to run the code.
In the `providers.tf` he has configured the Google provider, to let Terraform know where will the resources be deployed. 
In the `variables.tf`, he has listed the input variables that the Terraform code needs.
Finally, in `storage.tf` he has drafted the Cloud Storage resources. 

1. In your console, navigate inside the `terraform` folder.
2. Inspect the code in the Terraform folder. 
3. Initialize Terraform with `terraform init`.
4.  Inspect the incoming changes by running `terraform plan`. Does the output in your console look like you have expected?
5. Run `terraform apply` to perform infrastructure changes. When prompted, type `yes`.
6. Navigate to Google Cloud Platform Console, search for `Cloud Storage` and find your newly created bucket. 

After you are done with this challenge, you can remove your resources by running `terraform destroy`.

# What did I learn?

- Google Cloud Platform as a managed cloud service provider 
- Google Cloud projects
- Terraform as Infrastructure as Code tool for Google Cloud Platform
- Basic Terraform workflow 


# 🐾 Special treats 🐾 

- 

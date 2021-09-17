# Azure Infrastructure Operations Project: Deploying a scalable IaaS web server in Azure

### Introduction
For this project, you will write a Packer template and a Terraform template to deploy a customizable, scalable web server in Azure.

### Getting Started
1. Clone this repository

2. Create your infrastructure as code

3. Update this README to reflect how someone would use your code.

### Dependencies
1. Create an [Azure Account](https://portal.azure.com) 
2. Install the [Azure command line interface](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
3. Install [Packer](https://www.packer.io/downloads)
4. Install [Terraform](https://www.terraform.io/downloads.html)

### Instructions
Before we get started, we want to create a policy that ensures all indexed resources are tagged. This will help us with organization and tracking, and make it easier to log when things go wrong. We will do this by creating and applying a Tagging Policy. Create a policy that ensures all indexed resources in your subscription have tags and deny deployment if they do not.

1. Write a policy definition that will denay the creation of resources that do not have tags
2. Apply the policy to a subscription named "tagging-policy"
3. Use * az policy assignment list * and take a screeshot of your policy

In order to support application deployment, we'll need to create an image that different organizations can take advantage of to deploy their own apps! To do this, we'll create a packer image that anyone can use, and we'll leverage in our own Terraform template.

The first thing we're going to want to do is use Packer to create a server image, ensuring that the provided application is included in the template. You can feel free to write your own from scratch or use the *server.json* starter code from the Github repository.

Be sure to complete the following:

1. Use Ubuntu 18.04-LTS SKU as your base image
2. Ensure the following is in your provisioners: *"inline": ["echo 'Hello World!' > index.html", "nohup busybox httpd -f -p 80 &" ] "inline_shebang: "/bin/sh -x ", "type": "shell" *
3. Ensure that the resource group you specify in Packer for the image is the same image specified in Terraform

Our Terraform template will allow us to reliably create, update, and destroy our infrastructure. In this example, we want to use the skills we've built with variables and loops, along with our knowledge of Azure infrastructure, to deploy a web app that has been loaded into our Packer template already.

Before we get started, we'll need to verify that the policy we deployed in an earlier lesson (that one that requires tags) is still available using the Azure CLI, and include a screenshot of that policy output in our repository.

#### Create the infrastructure

Now you're ready to create the infrastructure for the application to run on. Here are the main steps:
1. Create a Resource Group 
2. Create a Virtual Network and a Subgroup on the Virtual Netowrk 
3. Create a Network Security Group. Ensure that you explicity allow access to other VMs on the subnet and deny access from the Internet
4. Create a Network Interface 
5. Create a Public IP
6. Create a Load Balancer. Your Load Blanceer will need a backend address pool and address pool association for the network interface and the load balancer
7. Create a Virtual Machine Availability Set
8. Create Virtual Machines - make sure you use the image you deployed using Packer!
9. Create Managed Disks for Your Virtual Machine
10. Ensure a variables file allows for customers to configure the number of virtual machines and the deployment at a minimum  


### Output
**Your words here**


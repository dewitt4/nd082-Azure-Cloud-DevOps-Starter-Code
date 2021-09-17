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

### Output
**Your words here**


variable "cust_scope" {
    default = "{scope}"
}

# Custom Images Created using Packer 
variable "managed_image_name" {
   description = "Name of the managed image"
}
variable "managed_image_resource_group_name" {
   description = "Name of the managed image resource group"
}
variable "vm_count" {
   description = "The number of custom image VMs to create"
}
variable "stage" {
   description = "Which stage to deploe in - ex: Production / Testing / Staging / Development etc"
}

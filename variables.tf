#Defining the Different Types of Variables

# String Variable for all Azure Location
variable "location" {
  type = string
  description = "The Azure region where resources will be deployed"
  
}


variable "rgname" {
  type = string
  description = "The name of the Resource Group"
}
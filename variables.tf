#Defining the Different Types of Variables

# String Variable for all Azure Location
variable "location" {
  type = string
  description = "The Azure region where resources will be deployed"
  default = "westus2"  // Default location set to East US
  #only mentioned values are allowed
  validation {
    condition     = contains(["eastus", "westus", "centralus", "eastus2", "westus2"], var.location)
    error_message = "The location must be one of the following: eastus, westus, centralus, eastus2, westus2."
  }
}


variable "rgname" {
  type = string
  description = "The name of the Resource Group"
}
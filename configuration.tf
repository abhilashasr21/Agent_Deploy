#Configuration file for azure deployment

provider "azurerm" {
  features {}
}

#State file is stored in azure storage account
terraform {
  backend "azurerm" {
    resource_group_name   = "tfstate-rg"               // Resource Group where the storage account is created
    storage_account_name  = "tfstatestorageacct"       // Storage Account name
    container_name        = "tfstatecontainer"         // Container name in the storage account
    key                   = "terraform.tfstate"        // State file name
  }
}
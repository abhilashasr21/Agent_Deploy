#Configuration file for azure deployment

provider "azurerm" {
  features {}
  resource_provider_registrations = "all"
  subscription_id                 = "5a395407-07f8-47a9-b8bf-92c05227486c"
}

#State file is stored in azure storage account
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.5.0"
    }

    azapi = {
      source = "azure/azapi"
    }
  }

  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatestorageacct0202"
    container_name       = "tfstatecontainer"
    key                  = "terraform-dev.tfstate"
    use_azuread_auth     = true
  }
}
#Resource Group in Azure
resource "azurerm_resource_group" "example" {
  name     = var.rgname                             // Resource Group Name defined in variables.tf
  location = var.location                         // Location defined in variables.tf
  tags = {
    environment = "Development"
  }
}
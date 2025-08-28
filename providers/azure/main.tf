# This file should only contain resource declarations for Azure.
# The 'terraform { required_providers { ... } }' and 'provider "azurerm" { ... }'
# blocks have been moved to providers.tf to avoid duplication.

resource "azurerm_resource_group" "my_resource_group" {
  name     = var.resource_group_name
  location = var.azure_location

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}

resource "azurerm_storage_account" "my_storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.my_resource_group.name
  location                 = azurerm_resource_group.my_resource_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS" # Locally Redundant Storage

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}

resource "azurerm_storage_container" "my_storage_container" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.my_storage_account.name
  container_access_type = "private"
}

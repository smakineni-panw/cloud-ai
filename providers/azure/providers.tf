# This file defines the AzureRM provider configuration.
# It should contain the 'terraform { required_providers { ... } }'
# and 'provider "azurerm" { ... }' blocks for the Azure module.

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

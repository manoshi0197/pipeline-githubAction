terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.2.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "AzureBackupRG_eastus_1"
    storage_account_name = "ditfstore1"
    container_name       = "sunny"
    key                  = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}
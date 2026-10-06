terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.2.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rgsept"
    storage_account_name = "resuableaction"
    container_name       = "finalaction"
    key                  = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}
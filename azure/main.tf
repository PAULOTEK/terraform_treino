terraform {

  required_version = ">= 1.0.0"

   required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "remote-state"
    storage_account_name = "pauloalexandrestorageaccount"
    container_name = "remote-state"
    key = "azure-vnet"
  }
}

provider "azurerm" {
  skip_provider_registration = true
  features {}
}
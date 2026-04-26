terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.69.0"
    }
  }
      backend "azurerm" {
      resource_group_name = "rg-garmi"
      storage_account_name = "jethkigarmi"
      container_name       = "bahutgarmihai"
      key                  = "garmi.terraform.tfstate"
    }
  }

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg-mausam" {
  name     = "rg-garmi"
  location = "West Europe"
}

resource "azurerm_resource_group" "rg-baaris" {
  name     = "rg-barish"
  location = "West Europe"
}

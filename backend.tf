terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "backend-west-europe"
      storage_account_name = "backendwest"
      container_name       = "backendcontainer"
      key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
}


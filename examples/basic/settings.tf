terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.56.0"
    }
  }
  backend "local" {
    path = "local-states/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

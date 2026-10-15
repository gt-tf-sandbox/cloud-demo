
terraform {
  required_version = ">= 1.5.0"

  cloud {

    organization = "Sandbox-Proj"

    workspaces {
      name = "my-proj-workspace-dev"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}

}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}
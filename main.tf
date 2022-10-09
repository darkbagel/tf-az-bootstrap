terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg-darkbagel-infra-dev" {
  name     = "darkbagel-infra-dev"
  location = "West US"
}

resource "azurerm_storage_account" "stor-darkbagel-infra-tf-dev" {
  name                     = "stordarkbagelinfratfdev"
  resource_group_name      = azurerm_resource_group.tfstate.name
  location                 = azurerm_resource_group.tfstate.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_blob_public_access = true

  tags = {
    environment = "dev"
  }
}

resource "azurerm_storage_container" "container-darkbagel-infra-tfstate-dev" {
  name                  = "terraform"
  storage_account_name  = azurerm_storage_account.stor-darkbagel-infra-tf-dev.name
  container_access_type = "blob"
}

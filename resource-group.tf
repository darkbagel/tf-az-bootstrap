resource "azurerm_resource_group" "rg-darkbagel-tf-dev" {
  name     = "darkbagel-tf-dev"
  location = "West US"
}

resource "azurerm_resource_group" "rg-darkbagel-tf-test" {
  name     = "darkbagel-tf-test"
  location = "West US"
}

resource "azurerm_resource_group" "rg-darkbagel-tf-prod" {
  name     = "darkbagel-tf-prod"
  location = "West US"
}

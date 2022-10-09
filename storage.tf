resource "azurerm_storage_account" "stor-darkbagel-tf-dev" {
  name                            = "stordarkbageltfdev"
  resource_group_name             = azurerm_resource_group.rg-darkbagel-tf-dev.name
  location                        = azurerm_resource_group.rg-darkbagel-tf-dev.location
  account_tier                    = "Standard"
  account_replication_type        = "LRS"
  allow_nested_items_to_be_public = true

  tags = {
    environment = "dev"
  }
}

resource "azurerm_storage_container" "container-darkbagel-tf-state-dev" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.stor-darkbagel-tf-dev.name
  container_access_type = "blob"
}

resource "azurerm_storage_account" "stor-darkbagel-tf-test" {
  name                            = "stordarkbageltftest"
  resource_group_name             = azurerm_resource_group.rg-darkbagel-tf-test.name
  location                        = azurerm_resource_group.rg-darkbagel-tf-test.location
  account_tier                    = "Standard"
  account_replication_type        = "LRS"
  allow_nested_items_to_be_public = true

  tags = {
    environment = "test"
  }
}

resource "azurerm_storage_container" "container-darkbagel-tf-state-test" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.stor-darkbagel-tf-test.name
  container_access_type = "blob"
}

resource "azurerm_storage_account" "stor-darkbagel-tf-prod" {
  name                            = "stordarkbageltfprod"
  resource_group_name             = azurerm_resource_group.rg-darkbagel-tf-prod.name
  location                        = azurerm_resource_group.rg-darkbagel-tf-prod.location
  account_tier                    = "Standard"
  account_replication_type        = "LRS"
  allow_nested_items_to_be_public = true

  tags = {
    environment = "prod"
  }
}

resource "azurerm_storage_container" "container-darkbagel-tf-state-prod" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.stor-darkbagel-tf-prod.name
  container_access_type = "blob"
}

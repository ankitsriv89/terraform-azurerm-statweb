# Provider Block
provider "azurerm" {
  features {}
}

# Random String Resource
resource "random_string" "myrandom" {
  length  = 6
  upper   = false
  special = false
  numeric  = false
}

# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "sgrg" {
  name = local.rg_name

  location = var.resource_group_location
}

resource "azurerm_storage_account" "tfstorageacc" {
  name                     = local.sg_account_name
  resource_group_name      = azurerm_resource_group.sgrg.name
  location                 = azurerm_resource_group.sgrg.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
  account_kind             = var.storage_account_kind
  static_website {
    index_document     = var.static_website_index_document
    error_404_document = var.static_website_error_404_document
  }
  tags = local.common_tags
}

/* resource "azurerm_storage_container" "tfcontainer" {
  name                  = "app3"
  storage_account_name  = azurerm_storage_account.tfstorageacc.name
  container_access_type = "container"
}

resource "azurerm_storage_blob" "app3" {
  for_each               = fileset(path.module, "../static/*")
  name                   = trim(each.key, "$web/")
  storage_account_name   = azurerm_storage_account.tfstorageacc.name
  storage_container_name = azurerm_storage_container.tfcontainer.name
  type                   = "Block"
  source                 = each.key
}*/
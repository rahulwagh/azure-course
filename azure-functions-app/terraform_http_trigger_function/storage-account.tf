resource "azurerm_storage_account" "dev_eu_north_function_storage_acc" {
  name                     = "deveunorthstorageacc"
  resource_group_name      = azurerm_resource_group.dev_eu_north_function_app_rg.name
  location                 = azurerm_resource_group.dev_eu_north_function_app_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

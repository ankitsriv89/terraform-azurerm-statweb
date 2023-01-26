# Output variable definitions
output "resource_group_id" {
  description = "resource group id"
  value       = azurerm_resource_group.sgrg.id
}
output "resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.sgrg.name
}
output "resource_group_location" {
  description = "resource group location"
  value       = azurerm_resource_group.sgrg.location
}
output "storage_account_id" {
  description = "storage account id"
  value       = azurerm_storage_account.tfstorageacc.id
}
output "storage_account_name" {
  description = "storage account name"
  value       = azurerm_storage_account.tfstorageacc.name
}
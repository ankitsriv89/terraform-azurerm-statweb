locals {
  rg_name = var.resource_group_name
  #vnet_name = "${var.business_unit}-${var.environment}-${var.virtual_network_name}"
  #subnet_name = "${azurerm_virtual_network.tfvnet.name}-${var.subnet_name}"
  #sg_account_name = "sg-${var.business_unit}-${var.environment}-${var.resource_group_name}-${random_string.sgrand.id}"
  sg_account_name = "${var.storage_account_name}${random_string.myrandom.id}"

  service_name = "test service"
  owner        = "ankit srivastava"

  common_tags = {
    Service = local.service_name
    Owner   = local.owner
  }

}
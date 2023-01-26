locals {
  rg_name = var.resource_group_name
  
  sg_account_name = "${var.storage_account_name}${random_string.myrandom.id}"

  service_name = "test service"
  owner        = "ankit srivastava"

  common_tags = {
    Service = local.service_name
    Owner   = local.owner
  }

}

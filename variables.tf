#input variables


# 3. Resource group name
variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
  default     = "myrg"
}

# 4. Resource group location
variable "resource_group_location" {
  description = "Resource Group Location"
  type        = string
  default     = "centralindia"
}

variable "storage_account_name" {
  description = "Name of storage account"
  type        = string
}

variable "storage_account_tier" {
  description = "Storage Account Tier"
  type        = string
}

variable "storage_account_replication_type" {
  description = "Storage Account Replication Type"
  type        = string
}

variable "storage_account_kind" {
  description = "Storage Account Kind"
  type        = string
}
variable "static_website_index_document" {
  description = "static website index document"
  type        = string
}
variable "static_website_error_404_document" {
  description = "static website error 404 document"
  type        = string
}


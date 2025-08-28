variable "azure_location" {
  description = "The Azure region where resources will be deployed."
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "The name of the Azure Resource Group."
  type        = string
}

variable "storage_account_name" {
  description = "The globally unique name for the Azure Storage Account."
  type        = string
}

variable "storage_container_name" {
  description = "The name of the Azure Blob Storage Container."
  type        = string
}

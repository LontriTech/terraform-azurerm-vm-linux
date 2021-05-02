variable "resource_group_name" {
  type        = string
  description = "(Optional) The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
  default     = "example-resources"
}

variable "resource_group_location" {
  type        = string
  description = "(Optional) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  default     = "West Europe"
}

variable "vnet_name" {
  type        = string
  description = "(Optional) The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created."
  default     = "example-network"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "(Optional) The address space that is used the virtual network. You can supply more than one address space."
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  type        = string
  description = "(Optional) The name of the subnet. Changing this forces a new resource to be created."
  default     = "internal"
}

variable "subnet_address_prefix" {
  type        = string
  description = "(Optional) The address prefix for the subnet."
  default     = "10.0.2.0/24"
}

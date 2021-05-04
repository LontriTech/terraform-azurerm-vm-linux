variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the Resource Group used."
  default     = null
}

variable "location" {
  type        = string
  description = "(Required) The name location to which the VM will be deployed."
  default     = null
}

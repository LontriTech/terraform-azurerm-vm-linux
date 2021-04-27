variable "os_disk_caching" {
  type        = string
  description = "(Required) The Type of Caching which should be used for the Internal OS Disk. Possible values are None, ReadOnly and ReadWrite."
  default     = "ReadWrite"
}

variable "os_disk_storage_account_type" {
  type        = string
  description = "(Required) The Type of Storage Account which should back this the Internal OS Disk. Possible values are Standard_LRS, StandardSSD_LRS and Premium_LRS. Changing this forces a new resource to be created."
  default     = "Standard_LRS"
}

variable "os_name" {
  type        = string
  description = "(Optional) The name of the desired source image, refers to the values of the os-variables.tf file, ignored when the os_info block is declared as defined bellow."
  default     = "Ubuntu"
}

variable "os_info" {
  type        = map(any)
  description = "(Optional) A map with the source_image_reference values, overwrites the os_name value when declared."
  default     = null
}

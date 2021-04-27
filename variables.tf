variable "private_ip_address_version" {
  type        = string
  description = "(Optional) The IP Version to use. Possible values are IPv4 or IPv6."
  default     = "IPv4"
}

variable "private_ip_address_allocation" {
  type        = string
  description = "(Required) The allocation method used for the Private IP Address. Possible values are Dynamic and Static."
  default     = "Dynamic"
}

variable "enable_ip_forwarding" {
  type        = bool
  description = "(Optional) Should IP Forwarding be enabled?"
  default     = false
}

# Only certain Virtual Machine sizes are supported for Accelerated Networking - more information can be found in this document: 
# https://docs.microsoft.com/en-us/azure/virtual-network/create-vm-accelerated-networking-cli
# To use Accelerated Networking in an Availability Set, the Availability Set must be deployed onto an Accelerated Networking enabled cluster.
variable "enable_accelerated_networking" {
  type        = bool
  description = "(Optional) Should Accelerated Networking be enabled?"
  default     = false
}

variable "ip_configuration_name" {
  type        = string
  description = "(Required) A name used for this IP Configuration."
  default     = "internal"
}

variable "virtual_machine_name" {
  type        = string
  description = "(Required) The name of the Linux Virtual Machine. Changing this forces a new resource to be created."
  default     = "example-vm"
}

variable "virtual_machine_size" {
  type        = string
  description = "(Required) The SKU which should be used for this Virtual Machine, such as Standard_DS2_v2."
  default     = "Standard_F2"
}

variable "admin_ssh_key_username" {
  type        = string
  description = "(Required) The Username for which this Public SSH Key should be configured. Changing this forces a new resource to be created."
  default     = "adminuser"
}

variable "virtual_machine_admin_username" {
  type        = string
  description = "(Required) The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created."
  default     = "adminuser"
}

variable "admin_ssh_key_public_key_file" {
  type        = string
  description = "(Required) The Public Key which should be used for authentication, which needs to be at least 2048-bit and in ssh-rsa format, taken from a file. Changing this forces a new resource to be created."
  default     = "~/.ssh/id_rsa.pub"
}

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

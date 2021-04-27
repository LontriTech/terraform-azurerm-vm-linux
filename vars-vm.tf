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

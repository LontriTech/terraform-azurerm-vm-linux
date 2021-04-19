variable "virtual_machine_name" {
  type = string
  description = "(Required) The name of the Linux Virtual Machine. Changing this forces a new resource to be created."
  default = "example-vm"
}

variable "virtual_machine_size" {
  type = string
  description = "(Required) The SKU which should be used for this Virtual Machine, such as Standard_DS2_v2."
  default = "Standard_F2"
}

variable "virtual_admin_username" {
  type = string
  description = "(Required) The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created."
  default = "adminuser"
}

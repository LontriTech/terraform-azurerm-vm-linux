variable "virtual_machine_name" {
  type = string
  description = "(Required) The name of the Linux Virtual Machine. Changing this forces a new resource to be created."
  default = "example-vm"
}

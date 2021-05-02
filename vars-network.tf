variable "virtual_network_name" {
  type        = string
  description = "(Required) The name of the Virtual Network used."
  default     = null
}

variable "subnet_name" {
  type        = string
  description = "(Required) The name of the Subnet used."
  default     = null
}

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

variable "dns_servers" {
  type        = list(string)
  description = "(Optional) A list of IP Addresses defining the DNS Servers which should be used for this Network Interface."
  default     = null
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

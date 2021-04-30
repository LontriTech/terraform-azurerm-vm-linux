variable "standard_os" {
  type = map(any)
  default = {
    "Ubuntu" = {
      publisher = "Canonical",
      offer     = "UbuntuServer",
      sku       = "18.04-LTS"
      version   = "latest"
    },
    "RHEL" = {
      publisher = "RedHat",
      offer     = "RHEL",
      sku       = "8.2"
      version   = "latest"
    },
    "openSUSE" = {
      publisher = "SUSE",
      offer     = "openSUSE-Leap",
      sku       = "15.1"
      version   = "latest"
    },
    "CentOS" = {
      publisher = "OpenLogic",
      offer     = "CentOS",
      sku       = "7.6"
      version   = "latest"
    },
    "Debian" = {
      publisher = "credativ",
      offer     = "Debian",
      sku       = "9"
      version   = "latest"
    },
    "CoreOS" = {
      publisher = "CoreOS",
      offer     = "CoreOS",
      sku       = "Stable"
      version   = "latest"
    },
    "SLES" = {
      publisher = "SUSE",
      offer     = "SLES",
      sku       = "12-SP2"
      version   = "latest"
    }
  }
}

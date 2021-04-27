# Azure - Linux VM

A Terraform module to create a Linux Virtual Machine on Azure.

# Usage

## OS Info

To make it easier when declaring which OS should be used, this module has a structure that allows choosing the OS with a single string, the available options are the keys on [os-variables.tf](os-variables.tf), it's also posible to define the block on your own, following the same structure and declaring it under the "os_info" variable.

The default OS is Ubuntu, with details as declared in the first block inside [os-variables.tf](os-variables.tf).

## Terraform Init

The <code>init</code> command needs to be executed in order to initialize the Terraform Backend, this command uses the backend configuration declared or referenced in the root directory of the module.

## Terraform Validate (Optional)

The <code>validate</code> command is useful to check if the Terraform file has a valid structure, it can be used to check if any breaking changes have been introduced.

## Terraform Plan

It's a good practice to run the <code>plan</code> command before running any operations on your existing infrastructure, this way you can always tell if there are unexpected and/or breaking changes.

To make sure any subsequent <code>apply</code> commands do what the <code>plan</code> command said they would do, you can run the following command: 

<code>terraform plan -out tfplan</code>

This command creates a plan file, which can then be used in the <code>apply</code> command.

## Terraform Apply

This command is the one that applies the actions detailed in the results of the <code>plan</code> command.

This command will ask for manual approval, unless if provided a plan file or explicitly told to do so with the <code>-auto-approve</code> option.

To execute this command referencing the plan file created on the previous step use: 

<code>terraform apply tfplan</code>

# Official Docs / References

## Modules

- [Standard Module Structure](https://www.terraform.io/docs/language/modules/develop/structure.html)
- [Publishing Modules](https://www.terraform.io/docs/registry/modules/publish.html)

## Resources

- [azurerm_linux_virtual_machine](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine)
- [azurerm_resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group)
- [azurerm_virtual_network](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network)
- [azurerm_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet)
- [azurerm_network_interface](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface)

## Providers

- [azurerm 2.56.0](https://registry.terraform.io/providers/hashicorp/azurerm/2.56.0)
- [azurerm latest docs](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
- [terraform-azurerm-compute](https://github.com/Azure/terraform-azurerm-compute)
- [terraform-azurerm-naming](https://github.com/Azure/terraform-azurerm-naming)

## Backends

- [local backend configuration](https://www.terraform.io/docs/language/settings/backends/local.html)
- [azurerm backend configuration](terraform.io/docs/language/settings/backends/azurerm.html)

## References
- [aztfmod/terraform-azurerm-caf/modules/compute/virtual_machine](https://github.com/aztfmod/terraform-azurerm-caf/tree/5.3.2/modules/compute/virtual_machine)

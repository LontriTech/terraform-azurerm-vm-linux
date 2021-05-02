module "example-vm-linux-basic" {
  source = "../.."

  virtual_machine_name = "example"
  resource_group       = module.example_requirements.resource_group_name
  virtual_network_name = module.example_requirements.virtual_network_name
  subnet_name          = module.example_requirements.subnet_name
}

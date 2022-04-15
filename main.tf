resource "azurerm_resource_group" "this" {
  name     = "${var.resource_name_prefix}-rg"
  location = var.location
}

module "linux-vm" {
  source  = "./modules/linux-vm"
  vm_name = "linux-vm"

  ip_configuration_name = var.ip_configuration_name
  subnet_id             = azurerm_subnet.this.id
  location              = azurerm_resource_group.this.location
  resource_group_name   = azurerm_resource_group.this.name
}

module "win-vm" {
  source  = "./modules/windows-vm"
  vm_name = "win-vm"

  ip_configuration_name = var.ip_configuration_name
  subnet_id             = azurerm_subnet.this.id
  location              = azurerm_resource_group.this.location
  resource_group_name   = azurerm_resource_group.this.name
}
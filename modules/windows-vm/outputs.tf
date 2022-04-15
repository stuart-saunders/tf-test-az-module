output "private_ip_address" {
  value = azurerm_windows_virtual_machine.this.private_ip_address
}

output "admin_password" {
    value = random_password.this.result
}
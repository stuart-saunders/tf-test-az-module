output "admin_password" {
    value = "${module.win-vm.admin_password}"
    sensitive = true
}
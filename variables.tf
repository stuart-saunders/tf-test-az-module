variable "resource_name_prefix" {
  type        = string
  description = "The prefix to add to resource names"
  default     = "tf-vm-module-test"
}

variable "location" {
  type        = string
  description = "The Azure Region where the resource should exist"
  default     = "UK South"
}

variable "ip_configuration_name" {
  type = string
  description = "The name used for the IP Configuration"
  default = "internal"
}
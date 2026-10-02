variable "prefix" {
  description = "Prefix used for resource names"
  type        = string
  default     = "suvi"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "rg-terraform-assignment"
}

variable "admin_username" {
  description = "Linux VM admin username"
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "Linux VM admin password"
  type        = string
  sensitive   = true
}

variable "ssh_public_key" {
  description = "SSH public key for Linux VM"
  type        = string
}
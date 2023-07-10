# variables.tf

variable "resource_group_name" {
  description = "Name of the Azure resource group."
  type        = string
}

variable "location" {
  description = "Azure region where the AKS cluster will be created."
  type        = string
}

variable "aks_name" {
  description = "Name of the AKS cluster."
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster."
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the AKS cluster."
  type        = number
}

variable "vm_size" {
  description = "Size of the VMs in the AKS cluster."
  type        = string
}

variable "tags" {
  description = "Tags to assign to the AKS cluster."
  type        = map(string)
}

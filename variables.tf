variable "hostname" {
  description = "Virtual machine hostname. Used for local hostname, DNS, and storage-related names."
  default     = "rc-vault"
}

variable "location" {
  default = "West US 2"
}

variable "resource_group_name" {
  default = "rc-vault"
}

variable "sg_name" {
  default = "rc-vault-sg"
}

variable "subnet_prefixes" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "subnet_names" {
  default = ["azure-vault-demo-public-subnet", "azure-vault-demo-private-subnet"]
}

variable "address_space" {
  description = "The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created."
  default     = "10.0.0.0/16"
}

variable "subnet_prefix" {
  description = "The address prefix to use for the subnet."
  default     = "10.0.10.0/24"
}

## Provisioning script variables

variable "cmd_extension" {
  description = "Command to be excuted by the custom script extension"
  default     = "sh azure-vault-install.sh"
}

variable "cmd_script" {
  description = "Script to download which can be executed by the custom script extension"
  default     = "https://gist.githubusercontent.com/rogmanster/c6aefd27838d719d54717c598f3f52a0/raw/aaa17c2bb1d41ee41c777b0a5a3701ad754e139a/azure-vault-install.sh"
}

variable "ssh_key_public"     { default = "rc-public-key"}

variable "ssh_key_private"    { default = "rc-private-key"}

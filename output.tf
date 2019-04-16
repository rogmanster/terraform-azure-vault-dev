output "Public IP" {
  description = "public IP address of the vault-demo server"
  value       = "${azurerm_public_ip.vault-demo.ip_address}"
}

output "Private IP" {
  description = "private IP address of the vault-demo server"
  value       = "${azurerm_network_interface.vault-demo.private_ip_address}"
}

output "Vault SSH" {
  description = "shortcut to ssh into the vault demo vm."
  value = "ssh azureuser@${azurerm_public_ip.vault-demo.ip_address} -i ${path.module}/.ssh/id_rsa -L 8200:localhost:8200"
}

#output "vault_ui" {
#  value = "http://${azurerm_public_ip.vault-demo.fqdn}:8200"
#}

output "Vault UI" {
  value = "${format("export VAULT_ADDR=http://%s:8200", azurerm_public_ip.vault-demo.fqdn)}"
}

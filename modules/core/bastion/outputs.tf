output "bastion-ip" {
  value = azurerm_public_ip.bastion-ip.ip_address
}
output "bastion-host" {
 value = azurerm_bastion_host.bastion-host.name
}
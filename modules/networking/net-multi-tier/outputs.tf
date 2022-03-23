output "vnet-name" {
  value = azurerm_virtual_network.vnet.name
}
output "subnets" {
  value = [

    for id in keys(var.vnet_subnets) :
    {
      "subnetid" = azurerm_subnet.subnets[id].id
      "subnetname" = azurerm_subnet.subnets[id].name,
      "iprange"    = join(",", azurerm_subnet.subnets[id].address_prefixes)
    }
  ]
}

output "network-security-groups" {
  value = [for nsg in azurerm_network_security_group.nsg : nsg.name]
}
output "Ubuntu-VMs" {
  value = [
    for v in range(length(azurerm_linux_virtual_machine.lin-vm)) : {
      "name" = azurerm_linux_virtual_machine.lin-vm[v].name,
      "location" = azurerm_linux_virtual_machine.lin-vm[v].location,
      "pvt-ip" =azurerm_network_interface.lin-nic[v].private_ip_address
    }
  ]  
}
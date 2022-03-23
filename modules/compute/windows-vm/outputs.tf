output "Windows-VMs" {
  value = [
    for v in range(length(azurerm_windows_virtual_machine.win-vm)) : {
      "name" = azurerm_windows_virtual_machine.win-vm[v].name,
      "location" = azurerm_windows_virtual_machine.win-vm[v].location,
      "pvt-ip" =azurerm_network_interface.win-nic[v].private_ip_address
    }
  ]  
}

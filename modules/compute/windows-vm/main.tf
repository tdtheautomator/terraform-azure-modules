resource "azurerm_network_interface" "win-nic" {
  count               = var.win_vm_count
  name                = var.win_vm_count == 1 ? "${local.vm_name_prefix}01-nic" : format("%s%02d-nic", "${local.vm_name_prefix}", count.index + 1)
  location            = var.location
  resource_group_name = local.rg_name
  tags                = local.default_tags
  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.win_subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "win-vm" {
  count = var.win_vm_count
  name                = var.win_vm_count == 1 ? "${local.vm_name_prefix}01" : format("%s%02d", "${local.vm_name_prefix}", count.index + 1)
  location            = var.location
  resource_group_name = local.rg_name
  tags                = local.default_tags
  size                = var.win_vm_size
  admin_username      = var.win_vm_admin_name
  admin_password      = var.win_vm_admin_pass
  network_interface_ids = [
    azurerm_network_interface.win-nic[count.index].id
  ]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = var.win_stor_acc_type
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = var.win_vm_sku
    version   = "latest"
  }
}


resource "azurerm_managed_disk" "create-disk" {
  for_each            = local.add_disks
  name                = format("%s-datadisk-%02d", azurerm_windows_virtual_machine.win-vm[each.value["count_index"]].name,each.value["lun_id"])
  location            = var.location
  resource_group_name = local.rg_name
  tags                = local.default_tags
  storage_account_type = var.win_vm_disk_type
  disk_size_gb = each.value["disk_size"]
  create_option = "Empty"
}

resource "azurerm_virtual_machine_data_disk_attachment" "attach-disk" {
  for_each = local.add_disks
  managed_disk_id = azurerm_managed_disk.create-disk[each.key].id
  virtual_machine_id = azurerm_windows_virtual_machine.win-vm[each.value["count_index"]].id
  caching = "ReadWrite"
  create_option = "Attach"
  lun = each.value["lun_id"]
}
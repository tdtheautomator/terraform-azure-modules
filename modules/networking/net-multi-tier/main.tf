#-----------------Creating Network Watcher----------------------------------------------

resource "azurerm_network_watcher" "netwatcher" {
  name                = local.netwatch_name
  location            = var.location
  resource_group_name = local.rg_name
  tags = local.default_tags
  depends_on = [
    azurerm_resource_group.rg
  ]
}


#-----------------Creating VNet-----------------------------------------------------
resource "azurerm_virtual_network" "vnet" {
  name                = local.vnet_name
  address_space       = var.vnet_address_space
  location            = var.location
  resource_group_name = local.rg_name
  tags                = local.default_tags
  depends_on = [
    azurerm_resource_group.rg
  ]
}
#-----------------------------------------------------------------------------------

#-----------------Creating Subnets--------------------------------------------------
resource "azurerm_subnet" "subnets" {
  for_each             = var.vnet_subnets
  name                 = each.value["name"]
  resource_group_name  = local.rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = each.value["addr"]
  depends_on = [
    azurerm_virtual_network.vnet
  ]
}
#-----------------------------------------------------------------------------------

#-----------------Creating Network Security Groups----------------------------------
resource "azurerm_network_security_group" "nsg" {
  depends_on = [
    azurerm_subnet.subnets
  ]
  for_each            = var.vnet_subnets
  name                = "${local.vnet_name}-${each.value["name"]}-nsg"
  location            = var.location
  resource_group_name = local.rg_name
  tags                = local.default_tags
}
#-----------------------------------------------------------------------------------
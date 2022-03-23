#-----------------Creating Bastion Subnet-----------------------------------------------------
resource "azurerm_subnet" "bastion-subnet" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = local.rg_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.bastion_cidr
}

#-----------------Creating Public IP's for Bastion-----------------------------------------------------
resource "azurerm_public_ip" "bastion-ip" {
  name                    = "${local.prefix}-bastion-ip"
  resource_group_name     = local.rg_name
  location                = var.location
  sku                     = "Standard"
  allocation_method       = "Static"
  idle_timeout_in_minutes = 30
  tags     = local.default_tags
}
#-----------------------------------------------------------------------------------

#-----------------Creating Bastion Host--------------------------------------------------
resource "azurerm_bastion_host" "bastion-host" {
  name                = "${local.prefix}-bastion-host"
  resource_group_name = local.rg_name
  location            = var.location
  ip_configuration {
    name                 = "configuration"
    subnet_id            = azurerm_subnet.bastion-subnet.id
    public_ip_address_id = azurerm_public_ip.bastion-ip.id
  }
  tags     = local.default_tags
  depends_on = [time_sleep.delay_30]
}
#-----------------------------------------------------------------------------------

resource "time_sleep" "delay_30" {
  create_duration = "30s"
}

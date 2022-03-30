
module "resourcegroup" {
  source          = "./modules/core/resourcegroup"
  location        = var.location
  department      = var.department
  environment     = var.environment
  appname         = var.appname
  deployment-type = var.deployment-type
}


module "networking" {
  source             = "./modules/networking/net-multi-tier"
  location           = module.resourcegroup.resource-group-location
  department         = var.department
  environment        = var.environment
  appname            = var.appname
  deployment-type    = var.deployment-type
  vnet_address_space = var.vnet_address_space
  vnet_subnets       = var.vnet_subnets
}

#module "bastion" {
#  source          = "./modules/core/bastion"
#  location        = module.resourcegroup.resource-group-location
#  vnet_name       = module.networking.vnet-name
#  department      = var.department
#  environment     = var.environment
#  appname         = var.appname
#  deployment-type = var.deployment-type
#  bastion_cidr    = var.bastion_cidr
#}

module "windowsvm" {
  source            = "./modules/compute/windows-vm"
  location          = module.resourcegroup.resource-group-location
  department        = var.department
  environment       = var.environment
  appname           = var.appname
  deployment-type   = var.deployment-type
  win_subnet_id     = var.win_subnet_id
  win_add_disks     = var.win_add_disks
  win_vm_count      = var.win_vm_count
  win_vm_admin_pass = var.win_vm_admin_pass
}

module "linuxvm" {
  source            = "./modules/compute/ubuntu-vm"
  location          = module.resourcegroup.resource-group-location
  department        = var.department
  environment       = var.environment
  appname           = var.appname
  deployment-type   = var.deployment-type
  lin_subnet_id     = var.lin_subnet_id
  lin_add_disks     = var.lin_add_disks
  lin_vm_count      = var.lin_vm_count
  lin_vm_admin_pass = var.lin_vm_admin_pass
}
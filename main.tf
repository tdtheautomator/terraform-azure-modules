
module "resourcegroup" {
  source         = "./modules/resourcegroup"
  location       = var.location
  department     = var.department
  environment    = var.environment
  appname        = var.appname
  deployment-type = var.deployment-type
}


module "networking" {
  source             = "./modules/networking"
  location           = module.resourcegroup.resource-group-location
  rg_name            = module.resourcegroup.resource-group-name
  department         = var.department
  environment        = var.environment
  appname            = var.appname
  deployment-type     = var.deployment-type
  vnet_address_space = var.vnet_address_space
  vnet_subnets       = var.vnet_subnets
}
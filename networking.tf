
module "networking" {
  source             = "./modules/networking"
  location           = module.resourcegroup.resource-group-location
  rg_name            = module.resourcegroup.resource-group-name
  department         = var.department
  environment        = var.environment
  vnet_address_space = ["10.1.0.0/22", "10.2.0.0/22", "10.3.0.0/22", "10.4.0.0/22"]
  vnet_subnets = {
    subnet01 = {
      name = "frontend"
      addr = ["10.1.0.0/23"]
    }
    subnet02 = {
      name = "midlayer"
      addr = ["10.2.0.0/23"]
    }
    subnet03 = {
      name = "backend"
      addr = ["10.3.0.0/23"]
    }
    subnet04 = {
      name = "management"
      addr = ["10.4.0.0/27"]
    }
  }
}
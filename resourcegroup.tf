
module "resourcegroup" {
  source      = "./modules/resourcegroup"
  location    = var.location
  department  = var.department
  environment = var.environment
}
locals {
  department  = var.department
  environment = var.environment
  prefix    = lower("${var.department}-${var.environment}")
  vnet_name = "${local.prefix}-vnet"
  default_tags = {
    department  = lower(local.department)
    environment = lower(local.environment)
  }
}
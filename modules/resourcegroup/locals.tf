locals {
  department  = var.department
  environment = var.environment
  default_tags = {
    department  = lower(local.department)
    environment = lower(local.environment)
  }
  prefix    = lower("${var.department}-${var.environment}")
  rg_name   = "${local.prefix}-rg"
}
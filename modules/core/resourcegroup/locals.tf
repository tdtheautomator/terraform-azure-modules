locals {
  default_tags = {
    department  = lower(var.department)
    environment = lower(var.environment)
    appname  = lower(var.appname)
    deployment-type = lower(var.deployment-type)
  }
  prefix    = lower(join("-",["${var.environment}","${var.department}","${var.appname}"]))
  rg_name   = "${local.prefix}-rg"
}
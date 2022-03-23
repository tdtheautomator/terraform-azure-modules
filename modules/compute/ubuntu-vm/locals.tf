locals {
  prefix         = lower(join("-", ["${var.environment}", "${var.department}", "${var.appname}"]))
  vm_name_prefix = "lin-vm"
  rg_name        = var.rg_name != null ? var.rg_name : "${local.prefix}-rg"
  default_tags = {
    department      = lower(var.department)
    environment     = lower(var.environment)
    appname         = lower(var.appname)
    deployment-type = lower(var.deployment-type)
  }
  add_disks = {
    for disk in setproduct(range(var.lin_vm_count), range(length(var.lin_add_disks))) : "${disk[0]}:${disk[1]}" => {
      count_index = disk[0]
      disk_index = disk[1]
      disk_size = var.lin_add_disks[disk[1]]
      lun_id = disk[1]
    }
  }
}
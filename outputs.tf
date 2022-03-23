output "resource-group-id" {
  value = module.resourcegroup.resource-group-id
}
output "resource-group-name" {
  value = module.resourcegroup.resource-group-name
}
output "resource-group-location" {
  value = module.resourcegroup.resource-group-location
}
output "vnet-name" {
  value = module.networking.vnet-name
}
output "subnets" {
  value = module.networking.subnets
}

output "nsg" {
  value = module.networking.network-security-groups
}
output "bastion-ip" {
  value = module.bastion.bastion-ip
}
output "bastion-host" {
  value = module.bastion.bastion-host
}

output "Windows-VMs" {
  value = module.windowsvm.Windows-VMs
}

output "Linux-VMs" {
  value = module.linuxvm.Ubuntu-VMs
}
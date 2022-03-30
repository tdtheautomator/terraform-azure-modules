#------------------Common Inputs------------------
location    = "eastus2"
environment = "dev"
department  = "hr"
appname     = "payroll"
#--------------------------------------------------

#Resource Group name us created as inputs of environment-department-appname-rg

#------------------Networking Inputs---------------
vnet_address_space = ["10.1.0.0/22", "10.2.0.0/22", "10.3.0.0/22", "10.4.0.0/22"]
vnet_subnets = {
  frontend = {
    name = "frontend"
    addr = ["10.2.0.0/23"]
  }
  midlayer = {
    name = "midlayer"
    addr = ["10.3.0.0/23"]
  }
  backend = {
    name = "backend"
    addr = ["10.4.0.0/23"]
  }
}
#--------------------------------------------------

#------------------Nastion Inputs------------------
#bastion_cidr = ["10.1.0.0/26"]
#--------------------------------------------------

#------------------Windows VM Inputs---------------
win_vm_count  = 1
win_add_disks = [1]
#--------------------------------------------------

#------------------Linux VM Inputs-----------------
lin_vm_count  = 1
lin_add_disks = [1]
#--------------------------------------------------
location           = "eastus2"
department         = "retail"
environment        = "dev"
appname            = "card"
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
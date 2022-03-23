## Introduction
Module for creating Bastion Host.
## Providers
Coinfiguration is tested with following version of providers.
| **Name** | **Version** | **Link** |
|:--------:|:-----------:|:----------:|
|azurerm   |2.99         |[click](https://registry.terraform.io/providers/hashicorp/azurerm) |

## Resources
- azurerm_public_ip
- azurerm_bastion_host

## Inputs
| **Name**           | **Mandatory** | **Type**       |           **Description**                          |
|:--------:          |:-------------:|----------      |--------------------------------------------------  |
|location            |      yes      |  string        |location of the resource group to be created        |
|department          |      yes      |  string        |department for which this resource group belongs    |
|environment         |      yes      |  string        |environment for which this resource group belongs   |
|appname             |      yes      |  string        |application tag for the deployment                  |
|deployment-type     |      no       |  string        |deployment type defaults to terraform               |
|rg_name             |      no       |  string        |resource group under which vnet needs to be created |
|vnet_name           |      yes      |  string        |vnet name                                           |
|bastion_cidr        |      yes      |  list(string)  |cidr range of Bastion Subnet                        |

## Outputs
| **Name**               |    **Description**      |
|:---------------------: |:-----------------------:|
|bastion-ip               |bastion public ip       |
|bastion-host             |bastion host name       |

## References
- [VSCode Download](https://code.visualstudio.com/download)
- [Git Download](https://git-scm.com/downloads)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/)
- [Azure PowerShell](https://docs.microsoft.com/en-us/powershell/azure/)
- [terraform Download](https://www.terraform.io/downloads)
- [Virtual Subnet Calculator](https://www.davidc.net/sites/default/subnets/subnets.html)
- [Graphviz Download](https://www.graphviz.org/download/)

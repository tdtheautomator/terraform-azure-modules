## Introduction
Module for creating Ubuntu VM Instances
## Providers
Coinfiguration is tested with following version of providers.
| **Name** | **Version** | **Link** |
|:--------:|:-----------:|:----------:|
|azurerm   |2.99         |[click](https://registry.terraform.io/providers/hashicorp/azurerm) |

## Resources
- azurerm_network_interface
- azurerm_linux_virtual_machine
- azurerm_managed_disk
- azurerm_virtual_machine_data_disk_attachment

## Inputs
| **Name**           | **Mandatory** | **Type**       |           **Description**                          |   **Default**  |
|:--------:          |:-------------:|:----------:    |:--------------------------------------------------:|:--------------:|
|location            |      yes      |  string        |location of the resource group to be created        |                |
|department          |      yes      |  string        |department for which this resource group belongs    |                |
|environment         |      yes      |  string        |environment for which this resource group belongs   |                |
|appname             |      yes      |  string        |application tag for the deployment                  |                |
|deployment-type     |      no       |  string        |deployment type defaults to terraform               |terraform       |
|rg_name             |      no       |  string        |resource group under which vnet needs to be created |null            |
|lin_subnet_id       |      yes      |  string        |subnet in which to provison the vm                  |                |
|lin_vm_size         |      no       |  string        |size of the VM                                      |Standard_B2s    |
|lin_vm_admin_name   |      no       |  string        |administrator id                                    |winadmin        |
|lin_vm_admin_pass   |      yes      |  string        |administrator password                              |                |
|lin_vm_disk_type    |      no       |  string        |type of VM disk                                     |StandardSSD_LRS |
|lin_stor_acc_type   |      no       |  string        |type of storage account                             |StandardSSD_LRS |
|lin_add_disks       |      yes      |  list(number)  |size of additional disk to be added                 |                |
|lin_vm_sku          |      no       |  string        |OS version\SKU to be deployed                       |2019-Datacenter |
|lin_vm_count        |      no       |  string        |number of VM instances to provision                 |1               |



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

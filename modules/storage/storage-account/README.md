## Introduction
Module for creating Storage Account
## Providers
Coinfiguration is tested with following version of providers.
| **Name** | **Version** | **Link** |
|:--------:|:-----------:|:----------:|
|azurerm   |2.99         |[click](https://registry.terraform.io/providers/hashicorp/azurerm) |


## Inputs
| **Name**      | **Mandatory** | **Type** |           **Description**                          |
|:-------------:|:-------------:|----------|----------------------------------------------------|
|location       |      yes      |  string  |location of the storageaccount group to be created  |
|rg_name        |      yes      |  string  |resource group for storage account                  |
|department     |      yes      |  string  |department for which this resource group belongs    |
|environment    |      yes      |  string  |environment for which this resource group belongs   |
|appname        |      yes      |  string  |application tag for the deployment                  |
|deployment-type|      no       |  string  |deployment type defaults to terraform               |
|account_kind      |      no    |  string  |account type, defaults to StorageV2                 |
|account_tier      |      no    |  string  |account tier, Standard or Premium                   |
|replication_type  |      no    |  string  |replication type LRS,GRS,RAGRS,ZRS,GZRS,RAGZRS      |
|access_tier       |      no    |  string  |access tier Hot,Cold,Archive                        |
|blob_public_access|      no    |  Boolean |allow public access for blobs                       |


## Outputs
| **Name** |    **Description**      |
|:--------:|:-----------------------:|
|name      |storageaccount name      |

## References
- [VSCode Download](https://code.visualstudio.com/download)
- [Git Download](https://git-scm.com/downloads)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/)
- [Azure PowerShell](https://docs.microsoft.com/en-us/powershell/azure/)
- [terraform Download](https://www.terraform.io/downloads)
- [Virtual Subnet Calculator](https://www.davidc.net/sites/default/subnets/subnets.html)
- [Graphviz Download](https://www.graphviz.org/download/)

## Introduction
Repository for pre-configured modules for provisioning resources for single location.
## Authenticate
Authenticate using : 
```
az login
```

## Execute
Post authentication token is received sample commands are provided below. Refer [Terraform CLI](https://www.terraform.io/cli) for advance usage.

|                 **Command**                |                                      **Usage**                                         |
|:------------------------------------------:|:--------------------------------------------------------------------------------------:|
| terraform init                             | initialize working directory,backed and download necessary providers,modules,plugins   |
| terraform validate                         | validate terraform plan files                                                          |
| terraform fmt                              | update terraform plan files with appropriate formatting                                |
| terraform plan                             | simulate execution and provide details of changes to be applied                        |
| terraform apply                            | execute the terraform plan                                                             |
| terraform destroy                          | destroy resources defined in the plan                                                  |
| terraform apply -auto-approve              | execute the terraform plan, bypassing confirmation                                     |
| terraform apply -refresh-only              | scans remote infrastructure and updates tfstate file to match remote infrastructure    |
| terraform destroy -auto-approve            | destroy resources defined in the plan, bypassing confirmation                          |
| terraform apply -var-file="secrets.tfvars" | execute the terraform plan, with alternate input variables file                        |
| terraform providers                        | shows providers needed fro the configuration                                           |
| terraform version                          | shows all the installed version of providers                                           |
| terraform show                             | show readable output from tfstate file and outputs                                     |
| terraform get                              | update modules                                                                         |
| terraform state list                       | list all resources in the state file                                                   |
| terraform destroy  -target ""              | destroy a specefic resource (input based on state file)                                |
## Providers
Coinfiguration is tested with following version of providers.
| **Name** | **Version** | **Link** |
|:--------:|:-----------:|:----------:|
|azurerm   |   3.90      |[click](https://registry.terraform.io/providers/hashicorp/azurerm) |
|random    |   3.20      |[click](https://registry.terraform.io/providers/hashicorp/random)  |
|null      |   3.1.1     |[click](https://registry.terraform.io/providers/hashicorp/null)    |

## Modules
- [resourcegorup](https://github.com/tdtheautomator/terraform-azure-modules/tree/main/modules/core/resourcegroup)
- [net-multi-tier](https://github.com/tdtheautomator/terraform-azure-modules/tree/main/modules/net-multi-tier)
- [bastion](https://github.com/tdtheautomator/terraform-azure-modules/tree/main/modules/core/bastion)
- [windows-vm](https://github.com/tdtheautomator/terraform-azure-modules/tree/main/modules/compute/windows-vm)
- [ubuntu-vm](https://github.com/tdtheautomator/terraform-azure-modules/tree/main/modules/compute/ubuntu-vm)
- [storage-account](https://github.com/tdtheautomator/terraform-azure-modules/tree/main/modules/storage/storage-account)

## Common Inputs
These are defined in terraform.tfvars file

| **Name**           | **Mandatory** | **Type**       |           **Description**                          |
|:--------:          |:-------------:|----------      |--------------------------------------------------  |
|location            |      yes      |  string        |location of the resource group to be created        |
|department          |      yes      |  string        |department for which this resource group belongs    |
|environment         |      yes      |  string        |environment for which this resource group belongs   |
|appname             |      yes      |  string        |application tag for the deployment                  |
|deployment-type     |      no       |  string        |deployment type defaults to terraform               |

Resource Group Name is calculated based on inputs of environment,department,appname (eg environment-department-appname-rg --> dev-hr-payroll)
All resources have default tag: department, environment, appname, deployment-type

## References
- [VSCode Download](https://code.visualstudio.com/download)
- [Git Download](https://git-scm.com/downloads)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/)
- [Azure PowerShell](https://docs.microsoft.com/en-us/powershell/azure/)
- [terraform Download](https://www.terraform.io/downloads)
- [Virtual Subnet Calculator](https://www.davidc.net/sites/default/subnets/subnets.html)
- [Graphviz Download](https://www.graphviz.org/download/)

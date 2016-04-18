# Azure Management
Tools to assist in Azure Management

##PowerShell
All of the following scripts must be run from a Windows PowerShell console.

##Resource Manager
All of the following scripts can only be used with Azure resources deployed
using the Resource Manager paradigm.

###Install-AzureRmCmdlets
Usage: This script installs the commandlets for Azure Resource Manager. This
must be executed in an elevated PowerShell (run as admin) and only once per
machine.

Syntax:
```
.\Install-AzureRmCmdlets.ps1
```

###Login-AzureRm
Usage: This script logs you in to an Azure account and must be run typically
once per session before running the other scripts.

Syntax:
```
.\Login-AzureRm.ps1
```

###Set-RmVm
Usage: This script allows you to set the ResourceGroupName and VmName to be used
in all subsequent scripts. The values are stored in environment variables and
will thus be set until the window is closed.

Syntax:
```
.\Set-RmVm.ps1 -ResourceGroupName <YOUR_RESOURCE_GROUP> -VmName <YOUR_VM_NAME>
```

###Start-RmVm
Usage: This script will let you start a virtual machine.

Syntax:
```
.\Start-RmVm.ps1 -ResourceGroupName <YOUR_RESOURCE_GROUP> -VmName <YOUR_VM_NAME>
```
or if Set-RmVm has been used or you wish to set values interactively:
```
.\Start-RmVm.ps1
```

###Stop-RmVm
Usage: This script will let you stop a virtual machine. Note that you will be
asked for confirmation.

Syntax:
```
.\Stop-RmVm.ps1 -ResourceGroupName <YOUR_RESOURCE_GROUP> -VmName <YOUR_VM_NAME>
```
or if Set-RmVm has been used or you wish to set values interactively:
```
.\Stop-RmVm.ps1
```

###Connect-RmVm
Usage: This script will let you connect to a virtual machine. The IP of the VM
is read from Azure and then mstsc is used to connect to the machine.

Syntax:
```
.\Connect-RmVm.ps1 -ResourceGroupName <YOUR_RESOURCE_GROUP> -VmName <YOUR_VM_NAME> [-Port <YOUR_VMS_RDP_PORT>]
```
or if Set-RmVm has been used or you wish to set values interactively:
```
.\Connect-RmVm.ps1
```

###Use-SomeMachine.ps1.template
Usage: To create a template for easily working with one specific virtual
machine, change the RESOURCEGROUPNAME and VMNAME below and copy this file
to e.g. Use-SomeMachine.ps1. Then execute by running .\Use-SomeMachine.ps1
with no parameters.

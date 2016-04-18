param (
   [string]$ResourceGroupName = $( Read-Host "Input Azure resource group name" ),
   [string]$VmName = $( Read-Host "Input Azure VM Name" ),
   [int]$RdpPort = 3389

)


$env:ResourceGroupName = $ResourceGroupName
$env:VmName = $VmName
$env:RdpPort = $RdpPort

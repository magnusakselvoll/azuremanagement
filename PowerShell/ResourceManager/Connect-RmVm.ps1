param (
   [string]$ResourceGroupName = $(if ($env:ResourceGroupName -eq $null) {$( Read-Host "Input Azure resource group name" )} else {$env:ResourceGroupName}),
   [string]$VmName = $(if ($env:VmName -eq $null) {$( Read-Host "Input Azure VM Name" )} else {$env:VmName}),
   [int]$Port = $(if ($env:RdpPort -eq $null) {3389} else {$env:RdpPort})
)


$currentPublicIp = Get-AzureRmPublicIpAddress -ResourceGroupName $ResourceGroupName -Name $VmName
$serverAndPort = "{0}:$Port" -f $currentPublicIp.IpAddress

mstsc /v:$serverAndPort /f

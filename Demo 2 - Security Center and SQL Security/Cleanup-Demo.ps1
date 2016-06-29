# Cleanup_Demo.ps1
# Tested using Microsoft Azure PowerShell 1.4.0
#######################################################

Param(
    # The Subscription ID of the Azure Subscription you deployed to.
    [string] [Parameter(Mandatory=$true)] $subscriptionId,
    
    # The Resource Group Name you deployed to
    [string] $resourceGrpName = 'TBD'
)

Set-StrictMode -Version 3

# Sign-in to your Azure Subscription
Login-AzureRmAccount -SubscriptionId $subscriptionId -ErrorAction Stop

$deploymentResourceGrpName = $resourceGrpName
Remove-AzureRmResourceGroup -Name $resourceGrpName
Remove-AzureRmResourceGroup -Name $deploymentResourceGrpName

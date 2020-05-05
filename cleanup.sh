#!/bin/sh
sid=$1
echo $sid
#extract the resource group
rg=$(jq .resource_group .cloud/.azure/test/workspace.json)
rg=ashkuma_devtesting
ws=ashkumamlworkspace
echo $rg
az extension add -n azure-cli-ml
az ml workspace delete --subscription $sid --resource-group $rg --workspace-name $ws
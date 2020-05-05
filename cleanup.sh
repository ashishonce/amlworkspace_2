#!/bin/sh
sid=$1
echo $sid
#extract the resource group
# rg=$(jq .resource_group .cloud/.azure/test/workspace.json)
rg=ashkuma_devtesting
echo $rg
az extension add -n azure-cli-ml
az ml workspace list --resource-group $rg
#!/bin/sh
#sid=$1
#extract the resource group
rg=$(jq .resource_group .cloud/.azure/test/workspace.json)
rg=ashkuma_devtesting
ws=ashkumamlworkspace
jq -n "$1" | jq '.clientId'
#echo $sid
echo $rg
echo $ws
# az extension add -n azure-cli-ml
# az ml workspace delete --subscription $sid --resource-group $rg --workspace-name $ws
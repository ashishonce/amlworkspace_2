#!/bin/sh
#extract the resource group
rg=$(jq .resource_group .cloud/.azure/test/workspace.json)
ws=$(jq .name .cloud/.azure/test/workspace.json)
rg2=ashkuma_devtesting
ws2=ashkumamlworkspace
echo $ws
echo $rg
echo $1
sid=jq -n "$1" | jq ."subscriptionId"
echo $sid
az extension add -n azure-cli-ml
az ml workspace delete --subscription $sid --resource-group $rg --workspace-name $ws
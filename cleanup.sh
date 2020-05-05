#!/bin/sh
#sid=$1
#extract the resource group
# rg=$(jq .resource_group .cloud/.azure/test/workspace.json)
rg=ashkuma_devtesting
ws=ashkumamlworkspace
echo $ws
echo $rg
echo "$1"
jq -n "$1" | jq ."clientId"
# dt="$(echo "$1"|tr -d '\r')"
# dt="$(echo "$dt"|tr -d '\n')"
# jq -n "$dt"
# jq -n "$dt" | jq ."clientId"
# az extension add -n azure-cli-ml
# az ml workspace delete --subscription $sid --resource-group $rg --workspace-name $ws
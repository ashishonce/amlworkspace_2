#!/bin/sh
echo $1
#extract the resource group
rg = jq .resource_group .cloud/.azure/test/workspace.json
echo $rg
az extension add -n azure-cli-ml
az ml workspace list --resource-group "$rg"
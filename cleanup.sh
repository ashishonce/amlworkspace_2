#!/bin/sh
sid=$1
echo "$sid"
#extract the resource group
jq .resource_group /.cloud/.azure/test/workspace.json
# az extension add -n azure-cli-ml
# az ml workspace list --resource-group "$rg"
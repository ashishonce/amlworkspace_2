#!/bin/sh
echo $1
# apt install jq
jq .resource_group .cloud/.azure/test/workspace.json
# az extension add -n azure-cli-ml
# az ml workspace list --resource-group 
#!/bin/sh
echo $1
az extension add -n azure-cli-ml
az ml workspace list --resource-group ashkuma_devtesting
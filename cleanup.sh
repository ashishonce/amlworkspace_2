#!/bin/sh
id=$1
rg=$2
# Create a resource group.
echo $id
echo $rg
az ml workspace list
# az ml workspace delete -id "" -g aml_workspace_intTest_rg -w aml_workspace_intTest

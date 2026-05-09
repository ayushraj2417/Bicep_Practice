Some common azure CLI cmd:
"az version" -> To check the azure version
"az login" -> To login to the azure
"az account set --subscription "SUBSCRIPTION_NAME"" -> Change Subscription
"az account show" -> Show Subscription Details
"az group create --name rg-demo --location centralindia" -> To create the resource group
"az group list" -> List Resource Groups
"az group list --output table" -> List Resource group is table format
"az group delete --name rg-demo" -> To delete RG
"az deployment group create --resource-group rg-demo --template-file main.bicep" -> For Bicep Deployment
"az bicep build --file main.bicep" -> Validate Bicep File
"az vm list --output table" -> List Virtual Machines

To create VM:
"az vm create \
--resource-group rg-demo \
--name vm-demo \
--image Ubuntu2204 \
--admin-username azureuser \
--generate-ssh-keys"

Note: We can execute the azure CLI cmd inside: Bash, PowerShell and CMD

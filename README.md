# Biceps_Practice
Task 1: Perform the setup

I have used the GITHUB Codespace for the setup. First, I verified whether Git, Azure CLI, and Bicep were installed in the Codespace using the following commands:
For Git: git --version
For Azure CLI: az version
For Bicep: bicep --version
Note: In my case, Azure CLI and Bicep were not installed.

So, Azure CLI was installed using the following command:
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

Bicep was installed using:
az bicep install

After installation, the command: "bicep --version" was not working, whereas: "az bicep version" was working successfully.
This happened because Bicep was installed in the following location: /home/codespace/.azure/bin/bicep
However, this folder was not added to the system PATH. To fix this issue, I executed the following command:
export PATH=$PATH:/home/codespace/.azure/bin
After that, the Bicep extension was installed successfully.

Next, Azure login can be performed using: az login

Now the installation and setup process has been completed successfully.
-------------------------------------------------------------------------------

Setup Status:
Git - Installed
Azure CLI - Installed
Bicep CLI - Installed
Bicep Extension - Installed
Azure Login - Completed
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Task 2: Created the Storage Account Module and Deployed the Storage Account Using Module for the Dev Environment

So, For now our project structure is:
|-Modules
  |----storage-account
       |----main.bicep
  |----resource-group
|-environment
  |----main.bicep
  |----dev.bicepparam
  |----test.bicepparam
  |----prod.bicepparam


First, the Storage Account module was created inside File: "modules/storage-account/main.bicep"
After creating the module, the main.bicep file was created inside the "environments/main.bicep" and this file is responsible to calling the storage account module.
I have created dev.bicepparam to initialize the parammater.

Finally, the resource was deployed using the following Azure CLI command:
az deployment group create \
  --resource-group rg-demo \
  --template-file ./environments/main.bicep \
  --parameters ./environments/dev.bicepparam
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

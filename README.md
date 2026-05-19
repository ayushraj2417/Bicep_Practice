# Biceps Practice
### Task 1: Perform the setup
I have used the GITHUB Codespace for the setup. First, I verified whether Git, Azure CLI, and Bicep were installed in the Codespace using the following commands:

For Git: git --version

For Azure CLI: az version

For Bicep: bicep --version

Note: In my case, Azure CLI and Bicep were not installed.

So, Azure CLI was installed using the following command:
`curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash`

Bicep was installed using:
**az bicep install**

After installation, the command: "bicep --version" was not working, whereas: "az bicep version" was working successfully.

This happened because Bicep was installed in the following location: /home/codespace/.azure/bin/bicep

However, this folder was not added to the system PATH. To fix this issue, I executed the following command:

*export PATH=$PATH:/home/codespace/.azure/bin*

After that, the Bicep extension was installed successfully.

Next, Azure login can be performed using: az login

Now the installation and setup process has been completed successfully

---

Setup Status:  
Git - Installed  
Azure CLI - Installed  
Bicep CLI - Installed  
Bicep Extension - Installed  
Azure Login - Completed

---

### Task 2: Created the Storage Account Module and Deployed the Storage Account Using Module for the Dev Environment

<img width="207" height="167" alt="image" src="https://github.com/user-attachments/assets/e439899f-4079-44f7-a1c2-88d540fea86a" />  

First, the Storage Account module was created inside File: "modules/storage-account/main.bicep"
After creating the module, the main.bicep file was created inside the "environments/main.bicep" and this file is responsible to calling the storage account module.
I have created dev.bicepparam to initialize the parammater.

We can plan using the below cmd: (Same like terraform plan)  
```bicep
az deployment group what-if \
  --resource-group rg-demo \
  --template-file ./environments/main.bicep \
  --parameters ./environments/dev.bicepparam
```
  
Finally, the resource was deployed using the following Azure CLI command: (Same like terraform apply)  
```bicep
az deployment group create \
  --resource-group rg-demo \
  --template-file ./environments/main.bicep \
  --parameters ./environments/dev.bicepparam
```

---

### Task 3: I have created the storage account using array type and used for loop.  
For plan, we have to execute below code:  
```bicep
az deployment group what-if --resource-group rg-demo --template-file ./environments/multiple-storage-
main.bicep --parameters ./environments/test-multiple-storage.bicepparam
```

For apply the changes:  
```bicep
az deployment group create --resource-group rg-demo --template-file ./environments/multiple-storage-
main.bicep --parameters ./environments/test-multiple-storage.bicepparam
```

---

### Task 4: I have created the storage account using array of object and used for loop.

---


### Task 5: I have created the function app and for that I have created the storage  account, app service plan and then created the function app

---

using 'multiple-storage-array-of-object-main.bicep'

param storageaccountconf = [
{
    storage_name: 'mystorage1'
    storage_size: 'Standard_LRS'
  }
  {
    storage_name: 'mystorage2'
    storage_size: 'Premium_LRS'
  }
]

param isDeployment = true

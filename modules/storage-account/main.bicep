param storage_account_name string
param storage_account_location string 
param storage_account_size string
resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: '${storage_account_name}2417'
  location: storage_account_location
  sku: {
    name: storage_account_size
  }
  kind: 'StorageV2'
}

output storageAccountName string = storageAccount.name



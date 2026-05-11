type storageaccountconftype = {
    storage_name: string
    storage_size: string
}
param storageaccountconf storageaccountconftype[]
param isDeployment bool


resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = [for str in storageaccountconf: if (isDeployment) {
  name: '${str.storage_name}${uniqueString(resourceGroup().id)}'
  location: 'centralindia'
  kind: 'StorageV2'
  sku: {
    name: str.storage_size
  }
}
]

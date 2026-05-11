param storage_account_name array
param storage_location string
param storage_size string

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = [for str in storage_account_name: {
  name: str
  location: storage_location
  kind: 'StorageV2'
  sku: {
    name: storage_size
  }
}
]

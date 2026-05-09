param storage_name string
param storage_location string
param storage_size string

module storageModule '../modules/storage-account/main.bicep' = {
name : 'storageDeployment'
params: {
  storage_account_name: storage_name
  storage_account_location: storage_location
  storage_account_size: storage_size
  }
}

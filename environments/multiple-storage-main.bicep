param storage_names array
param storage_location string
param storage_size string

module storageModule2 '../modules/multiple-storage-account-using-array/main.bicep' = {
name : 'storageDeployment1'
params: {
  storage_account_name: storage_names
  storage_location: storage_location
  storage_size: storage_size
  }
}

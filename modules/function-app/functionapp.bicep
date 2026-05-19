param fn_name string
param fn_location string

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'mystorage725271'
  location: fn_location
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
}


resource appServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: '${fn_name}-plan'
  location: fn_location
  sku: {
    name: 'B1'
    capacity: 1
  }
}


resource myazureFunction 'Microsoft.Web/sites@2020-12-01' = {
  name: fn_name
  location: fn_location
  kind: 'functionapp'
  properties: {
    serverFarmId: appServicePlan.id
    siteConfig: {
      appSettings: [
       
        {
          name: 'AzureWebJobsStorage'
          value: storageaccount.listKeys().keys[0].value
        }
      
        {
          name: 'FUNCTIONS_EXTENSION_VERSION'
          value: '~2'
        }
        {
          name: 'FUNCTIONS_WORKER_RUNTIME'
          value: 'dotnet'
        }
      ]
    }
  }
}


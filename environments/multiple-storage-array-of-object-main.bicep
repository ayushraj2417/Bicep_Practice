param storageaccountconf array
param isDeployment bool
module mymodule '../modules/multiple-storage-using-array-of-object/main.bicep' = {
  name: 'mydeployment3'
  params: {
    storageaccountconf: storageaccountconf
    isDeployment: isDeployment
  }
}

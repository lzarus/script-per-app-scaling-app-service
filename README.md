# script-per-app-scaling-app-service
This function allows you to configure the app service plan to use "PerSiteScaling" and set the number of workers for the web app.

Parameters
ResourceGroupName (string, optional): The name of the resource group in Azure where the web app and app service plan will be created. Default value is "myRG".
AppServicePlanName (string, optional): The name of the app service plan. Default value is "myasp".
WebAppName (string, optional): The name of the web app. Default value is "webapp1".
NumberOfWorkers (int, optional): The number of workers for the web app. Default value is 1.
Usage
To use the New-HighDensityWebApp function, you can call it with the desired parameters. For example:

New-HighDensityWebApp -ResourceGroupName "myRG" -AppServicePlanName "myasp" -WebAppName "webapp1" -NumberOfWorkers 2
This will create a new high-density web app with the specified parameters.

Prerequisites
Before using this function, make sure you have the following:

Azure account with the necessary permissions to create resources.
Azure PowerShell module installed.
Notes
This function assumes that you are already connected to Azure and have set the desired Azure context using the Set-AzContext command. If not, you may need to modify the function to include the necessary connection and context setup
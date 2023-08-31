function New-HighDensityWebApp {
    param( [string]$ResourceGroupName="myRG", 
        [string]$AppServicePlanName="myasp", 
        [string]$WebAppName="webapp1",
        [int]$NumberOfWorkers=1
        )

    # Connect-AzureAD
    # Set-AzContext -SubscriptionId "65fa933f-ebd5-434d-afa5-7fcf2375eeb0"           
    Get-AzAppServicePlan -ResourceGroupName $ResourceGroupName -Name $AppServicePlanName
    Set-AzAppServicePlan -ResourceGroupName $ResourceGroupName -Name $AppServicePlanName -NumberofWorkers 3 -PerSiteScaling $true
    
    # Get the app we want to configure to use "PerSiteScaling"
    $newapp = Get-AzWebApp -ResourceGroupName $ResourceGroupName -Name $WebAppName

    # Modify the NumberOfWorkers setting to the desired value.
    $newapp.SiteConfig.NumberOfWorkers = 2
    # $newapp.SiteConfig.AppSettings.Add( [Microsoft.Azure.Management.WebSites.Models.NameValuePair]::new("AppName", $WebAppName))
 
    # Post updated app back to azure
    Set-AzWebApp $newapp
}
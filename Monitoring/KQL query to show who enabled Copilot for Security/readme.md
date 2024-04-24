If you are logging Azure Activity, you should be able to run the query in Microsoft Sentinel or Azure Monitor.
Navigate the Logs in your Lof Analytics workspace or Sentinel and run the query below 

AzureActivity
| where TimeGenerated >= ago(30d) 
| where ResourceProviderValue == "MICROSOFT.SECURITYCOPILOT" 
| extend resourceName = tostring(parse_json(Properties).resource) 
| extend resourceGroupName = tostring(parse_json(Properties).resourceGroup) 
| extend resourceActivity = tostring(parse_json(Properties).message) 
| where resourceActivity == "Microsoft.SecurityCopilot/capacities/write"
| project Caller, resourceName, resourceGroupName, resourceActivity, TimeGenerated

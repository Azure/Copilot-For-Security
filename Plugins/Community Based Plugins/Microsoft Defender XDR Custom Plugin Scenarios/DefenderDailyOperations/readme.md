# Copilot for Security Custom Plugin - Defender Daily Operations 

This plugin aids in comprehending the recommended approach of integrating multiple related skills into a single plugin. The provided code sample demonstrates the combination of two skills to retrieve information from few defender tables. You can further expand upon this example to extract additional details from custom tables etc.  

### Pre-requisites

* [Copilot for Security Enabled](https://learn.microsoft.com/en-us/security-copilot/get-started-security-copilot#onboarding-to-microsoft-security-copilot)
* [Access to upload custom plugins](https://learn.microsoft.com/en-us/security-copilot/manage-plugins?tabs=securitycopilotplugin#managing-custom-plugins)
* [Microsoft Sentinel Workspace](https://learn.microsoft.com/en-us/azure/sentinel/quickstart-onboard) created.
* Skills and Parameters for KQL Plugin - GetDefenderDevices (devicehealthstate & exposurelevel), GetLatestEmailsByRecipient (email)

### Instructions
#### Upload the Custom Plugin

1. Obtain the file [KQL_DefenderDailyOperationsSample.yaml](https://github.com/Azure/Copilot-For-Security/tree/main/Plugins/Community%20Based%20Plugins/DefenderDailyOperations) from this directory.
2. Upload the custom plugin




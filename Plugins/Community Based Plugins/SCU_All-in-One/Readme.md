# Copilot for Security Plugin: SCU All-in-One

### **This plugin combines previous plugins into a single, all-in-one effort to capture and respond with Copilot for Security activity. This plugin will be updated as additional monitoring activity is made available and identified.**

### Pre-requisites

-   [Copilot for Security Enabled](https://learn.microsoft.com/en-us/security-copilot/get-started-security-copilot#onboarding-to-microsoft-security-copilot)
-   [Access to upload custom plugins](https://learn.microsoft.com/en-us/security-copilot/manage-plugins?tabs=securitycopilotplugin#managing-custom-plugins)
-   [Microsoft Sentinel Workspace](https://learn.microsoft.com/en-us/azure/sentinel/quickstart-onboard) created.
-   Parameters for KQL Plugin - Microsoft Sentinel Workspace Name, Subscription ID, Resource Group Name and Entra Tenant ID

### Instructions

#### Upload the Custom Plugin

1.  Obtain the file SCU_All-in-One.yaml from this directory.
2.  Modify the yaml file to specify your specific Entra TentantId, SubscriptionId, ResourceGroupName and WorkspaceName for your Sentinel instance.
3.  Upload the custom plugin

For more information, see: [Copilot for Security Activity All-in-One Custom Plugin](https://rodtrent.substack.com/p/copilot-for-security-activity-all)

# Security Copilot Plugin: Leveraging Security Copilot with ASIM-based KQL plugins for investigation scenarios

### **Bring in isights from Microosft Sentinel using source-agmostic queries based on ASIM - Advanced Security Iformatoin Model **

### Pre-requisites

-   [Security Copilot Enabled](https://learn.microsoft.com/en-us/security-copilot/get-started-security-copilot#onboarding-to-microsoft-security-copilot)
-   [Access to upload custom plugins](https://learn.microsoft.com/en-us/security-copilot/manage-plugins?tabs=securitycopilotplugin#managing-custom-plugins)
-   [Microsoft Sentinel Workspace](https://learn.microsoft.com/en-us/azure/sentinel/quickstart-onboard) created.
-   Parameters for KQL Plugin - Microsoft Sentinel Workspace Name, Subscription ID, Resource Group Name and Entra Tenant ID

### Instructions

#### Upload the Custom Plugin

1.  Obtain the file PotentialNetworkBeaconingActivity.yaml from this directory.
2.  Upload the custom plugin
3.  Input your specific Entra TentantId, SubscriptionId, ResourceGroupName and WorkspaceName in the resulting dialog box within Security Copilot



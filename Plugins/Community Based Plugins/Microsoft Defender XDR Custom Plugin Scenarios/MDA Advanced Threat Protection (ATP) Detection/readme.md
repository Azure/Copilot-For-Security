# Copilot for Security Plugin: MDA Advanced Threat Protection (ATP) Detection

### **This KQL plugin enables SOC analysts and managers to get insights about potential malware in their Cloud App environments based on the Defender for Cloud Apps CloudAppEvents table and Sentinel OfficeActivity table.**

### Pre-requisites

-   [Copilot for Security enabled](https://learn.microsoft.com/en-us/security-copilot/get-started-security-copilot#onboarding-to-microsoft-security-copilot)
-   [Access to upload custom plugins](https://learn.microsoft.com/en-us/security-copilot/manage-plugins?tabs=securitycopilotplugin#managing-custom-plugins)

### Instructions

#### Upload the Custom Plugin

1.  Obtain the file MDA_Advanced_Threat_Protection_Detection.yaml from this directory.
2.  Upload the custom plugin

#### Utilization of the plugin

- **GetCloudAppATPEvents**: Fetches a list of Advanced Threat Protection events within a specified timeframe
- **GetOfficeActivityATPEvents**: Fetches a list of Advanced Threat Protection events within a specified timeframe

#### Example Usage

1. A SOC manager is drafting a report for senior leadership about the impact of malware in the organisation. 
2. The GetCloudAppATPEvents skill summarises all the quarantined files from the 30 days.
3. The Microsoft Defender Threat Intelligence (MDTI) plugin is used to get context about the malware signatures and families that were detected. 
4. The Generic plugin is used to summarise the previous prompts and provide recommendations about additional controls that could be used to protect against the malware families seen. 

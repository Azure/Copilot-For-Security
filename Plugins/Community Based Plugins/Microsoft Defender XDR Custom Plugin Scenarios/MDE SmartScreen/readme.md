# Copilot for Security Plugin: MDE SmartScreen

### **This KQL plugin enables SOC analysts and engineers to get insights about SmartScreen warning pages and bypasses, using the Defender for Endpoint DeviceEvents table.**

### Pre-requisites

-   [Copilot for Security enabled](https://learn.microsoft.com/en-us/security-copilot/get-started-security-copilot#onboarding-to-microsoft-security-copilot)
-   [Access to upload custom plugins](https://learn.microsoft.com/en-us/security-copilot/manage-plugins?tabs=securitycopilotplugin#managing-custom-plugins)
-   [Microsoft Defender SmartScreen settings configured](https://learn.microsoft.com/en-us/windows/security/operating-system-security/virus-and-threat-protection/microsoft-defender-smartscreen/available-settings)

### Instructions

#### Upload the Custom Plugin

1.  Obtain the file MDE_SmartScreen.yaml from this directory.
2.  Upload the custom plugin

#### Skills

- **GetSmartScreenEvents**: Summarises SmartScreen events over a specified timeframe
- **GetSmartScreenWarningEvents**: Summarises SmartScreen warning events over a specified timeframe
- **GetSmartScreenBypassEvents**: Summarises SmartScreen bypass events over a specified timeframe
- **GetSmartScreenEventsURL**: Fetches a count of SmartScreen events grouped by URL
- **GetSmartScreenWarningEventsURL**: Fetches a count of SmartScreen warning events grouped by URL
- **GetSmartScreenBypassEventsURL**: Fetches a count of SmartScreen bypass events grouped by URL

#### Example Usage

1. A desktop engineer is drafting a report for senior leadership about the organisation’s protection against phishing or malware websites and applications.
2. The GetSmartScreenEvents skill is used to get a summary of the SmartScreen events from the past 30 days.
3. The GetSmartScreenBypassEvents skill is used to identify users who are ignored the warning message and may require futher security education and awareness traning. 
4. The Generic plugin is used to summarise the previous prompts and provide recommendations about changes to the current configuration. 

# Copilot for Security Plugin: MDE Plug and Play (PnP)

### **This KQL plugin enables SOC analysts to get insights about external devices that have been connected to a device, based on the Defender for Endpoint DeviceEvents table.**

### Pre-requisites

-   [Copilot for Security enabled](https://learn.microsoft.com/en-us/security-copilot/get-started-security-copilot#onboarding-to-microsoft-security-copilot)
-   [Access to upload custom plugins](https://learn.microsoft.com/en-us/security-copilot/manage-plugins?tabs=securitycopilotplugin#managing-custom-plugins)

### Instructions

#### Upload the Custom Plugin

1.  Obtain the file MDE_Plug_and_Plug.yaml from this directory.
2.  Upload the custom plugin

#### Skills

- **GetPnPTop25Devices**: Fetches a count of the top 25 PnP devices across the estate
- **GetPnPLeastCommonDevices**: Featches a count of the 25 least common PnP devices which could be anomalous  
- **GetPnPEventsFromDevice**: Summarises the PnP connection events from a specific device over a set timeframe

#### Example Usage

1. A SOC analyst is investigating a data exfiltration alert and requires further details on the methods used. 
2. The GGetPnPEventsFromDevice skill is used to get a summary of the PnP devices connected to a laptop over the past 24 hours.

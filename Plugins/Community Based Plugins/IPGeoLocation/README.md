# Copilot for Security Custom Plugin - API - Get IP Information from IP Geo Location

#### Copilot for Security Plugin to gather location and ISP (Organisation) for an IP Address using IP Geo Location

### Pre-requisites

* [Copilot for Security Enabled](https://learn.microsoft.com/en-us/security-copilot/get-started-security-copilot#onboarding-to-microsoft-security-copilot)
* [Access to upload custom plugins](https://learn.microsoft.com/en-us/security-copilot/manage-plugins?tabs=securitycopilotplugin#managing-custom-plugins)
* [API Key](https://app.ipgeolocation.io/signup) from IP Geo Location

### Instructions
#### Upload the Custom Plugin

1. Obtain the file [ipgl-manifest.yaml](https://github.com/Azure/Copilot-For-Security/blob/main/Plugins/Community%20Based%20Plugins/IPGeoLocation/ipgl-manifest.yaml) from this directory.
2. [Upload the custom plugin](https://learn.microsoft.com/en-us/security-copilot/manage-plugins?tabs=securitycopilotplugin#add-custom-plugins) and verify it's activated.
3. After plugin upload put in your [IP Geo Location API Key](https://learn.microsoft.com/en-us/security-copilot/plugin_api#configure-authentication-1).

![CopilotForSecurity](https://learn.microsoft.com/en-us/security-copilot/media/add-plugin-button.png)

### Plugin Utilization

Here's some sample queries you can utilize to trigger this plugin

* Summarize the information for the IP 1.1.1.1 from IP Geo Location
* Summarize the information for the IP 4.4.4.4 from IP Geo Location as bullet points
* Give me the location, ISP and reputation score of the IP address 8.8.8.8 from IP Geo Location in form of a table
<br>
<img src="https://github.com/Azure/Copilot-For-Security/blob/main/Plugins/Community%20Based%20Plugins/Images/ipgl-example-screenshot-1.png"/>
<br>
<img src="https://github.com/Azure/Copilot-For-Security/blob/main/Plugins/Community%20Based%20Plugins/Images/ipgl-example-screenshot-2.png"/>
# Copilot for Security Custom Plugin - API - Get Abuse IPDB IP Information

#### Copilot for Security Plugin to gather reputation and abuse reports for an IP Address using AbuseIPDB API's

### Pre-requisites

* [Copilot for Security Enabled](https://learn.microsoft.com/en-us/security-copilot/get-started-security-copilot#onboarding-to-microsoft-security-copilot)
* [Access to upload custom plugins](https://learn.microsoft.com/en-us/security-copilot/manage-plugins?tabs=securitycopilotplugin#managing-custom-plugins)
* [API Key](https://www.abuseipdb.com/api.html) from AbuseIPDB.com

### Instructions
#### Upload the Custom Plugin

1. Obtain the file [API-GetAbuseIPDBIP.yaml](https://github.com/SCStelz/CopilotForSecurity/blob/main/CustomPlugIns/API-GetAbuseIPDBIP/API-GetAbuseIPDBIP.yaml) from this directory.
2. [Upload the custom plugin](https://learn.microsoft.com/en-us/security-copilot/manage-plugins?tabs=securitycopilotplugin#add-custom-plugins) and verify it's activated.
3. After plugin upload put in your [AbuseIPDB API Key](https://learn.microsoft.com/en-us/security-copilot/plugin_api#configure-authentication-1).

![CopilotForSecurity](https://learn.microsoft.com/en-us/security-copilot/media/add-plugin-button.png)

### Plugin Utilization

Here's some sample queries you can utilize to trigger this plugin

* Can you summarize the AbuseIPDB information for the IP 205.210.31.142?
* Can you output a table of the last 25 reported port scan's for the IP 205.210.31.142 coming from AbuseIPDB Reports?
* Can you output a list of all of the port numbers that users reported port scans from AbuseIPDB for IP 205.210.31.142?
<br>
<img src="https://github.com/SCStelz/CopilotForSecurity/blob/main/Images/abuse-ipdb.png"/>
<br>
<img src="https://github.com/SCStelz/CopilotForSecurity/blob/main/Images/abuseipdb-ports.png"/>


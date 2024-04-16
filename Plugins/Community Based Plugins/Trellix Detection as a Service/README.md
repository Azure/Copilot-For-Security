# Copilot for Security Custom Plugin - API - Trellix Detection as a Service

#### Copilot for Security Plugin to retrieve sandbox reports for uploaded files and URLs using the Trellix Detection as a Service API

### Pre-requisites

* [Copilot for Security Enabled](https://learn.microsoft.com/en-us/security-copilot/get-started-security-copilot#onboarding-to-microsoft-security-copilot)
* [Access to upload custom plugins](https://learn.microsoft.com/en-us/security-copilot/manage-plugins?tabs=securitycopilotplugin#managing-custom-plugins)
* [API Key](https://fireeye.dev/docs/detection-on-demand/dod-portal/#api-key-management) from dod-portal.marketplace.apps.fireeye.com.

### Instructions
#### Upload the Custom Plugin

1. Obtain the file [API-GetAbuseIPDBIP.yaml](https://github.com/Azure/Copilot-For-Security/blob/main/Plugins/Community%20Based%20Plugins/AbuseIPDB/API-GetAbuseIPDBIP.yaml) from this directory.
2. [Upload the custom plugin](https://learn.microsoft.com/en-us/security-copilot/manage-plugins?tabs=securitycopilotplugin#add-custom-plugins) and verify it's activated.
3. After plugin upload put in your [DoD API Key](https://learn.microsoft.com/en-us/security-copilot/plugin_api#configure-authentication-1).

![CopilotForSecurity](https://learn.microsoft.com/en-us/security-copilot/media/add-plugin-button.png)

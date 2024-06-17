### Browserling Custom Plugin

This plugin can rewrite URLs ready to be detonated in browserling for a seamless interactive detonation experience. URLs do not need to be un-defanged when used in Browserling which keeps the user experience safer.

### Prerequistes
* [Copilot for Security Enabled](https://learn.microsoft.com/en-us/security-copilot/get-started-security-copilot#onboarding-to-microsoft-security-copilot)
* [Access to upload custom plugins](https://learn.microsoft.com/en-us/security-copilot/manage-plugins?tabs=securitycopilotplugin#managing-custom-plugins)

### Instructions
#### Upload the Custom Plugin

1. Obtain the file [Browserling.yaml](https://github.com/Azure/Copilot-For-Security/blob/main/Plugins/Community%20Based%20Plugins/Browserling/Browserling.yaml) from this directory.
2. [Upload the custom plugin](https://learn.microsoft.com/en-us/security-copilot/manage-plugins?tabs=securitycopilotplugin#add-custom-plugins) and verify it's activated.


### Plugin Utilization
* Can you please help me detonate amsi[.]fail?
* Can you safely Detonate office365com[.]zip for me?

![image](https://github.com/jkerai1/Copilot-For-Security/assets/55988027/3f0e6d4e-ee42-4134-bd80-b414a4287842)

![image](https://github.com/jkerai1/Copilot-For-Security/assets/55988027/bc59e7ac-c407-40c1-9183-5d6b35b3cb58)

URL navigates to:

![image](https://github.com/jkerai1/Copilot-For-Security/assets/55988027/8a0f39b8-74f1-4364-ba0a-53e4f03453a0)


## Plugin Guidance

It is strongly advised to work with defanged URLs (i.e. containing [.]) where possible to reduce chance of accidental detonation.

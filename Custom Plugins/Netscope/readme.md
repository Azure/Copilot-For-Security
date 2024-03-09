# Netscope

Microsoft has enhanced Microsoft Copilot for Security by preinstalling a set of plugins for their security services and frequently used websites. Additionally, you have the option to incorporate Netskope custom plugins, expanding Gen AI capabilities on your Netskope platform.

**Requirements**
Ensure you have an active [Microsoft Security CoPilot](https://securitycopilot.microsoft.com/) account and are able to login to: [https://securitycopilot.microsoft.com/](https://securitycopilot.microsoft.com/)
For more information on Security CoPilot please visit: [Get started with Microsoft Security Copilot Early Access Program](https://securitycopilot.microsoft.com/)

Create a local yaml file called `NetskopeCoPilotSkill.yaml` (filename can be anything). And paste the below in your yaml file:

```yaml
Descriptor:
  Name: Netskope Rest API Plugin
  DisplayName: Netskope Dataexport Reporting endpoints 
  Description: The API plugin offers a wide array of endpoint functionalities, including displaying alerts, managing incidents, and tracking infrastructure and network events. With support for DLP alerts, malware alerts, and security assessment events, it provides comprehensive monitoring and management capabilities in a concise package. 
  SupportedAuthTypes:
    - ApiKey
  Authorization:
    Type: APIKey
    Key: Netskope-api-token
    Location: Header
    AuthScheme: ''
  Icon: https://go.netskope.com/rs/665-KFP-612/images/Netskope-Primary-Logo-Full-Color-RGB.svg

SkillGroups:
  - Format: API
    Settings:
      OpenApiSpecUrl: https://gist.githubusercontent.com/mitchellgulledge2/2e57bfdf43c0a2a7b7e41c9a2adec6e9/raw/23e4dd50ab6109a05ee0c73aa7dde96aebfd7550/SecurityCoPilotDataexport.yaml
      EndpointUrl: "https://{insert your tenant here}.goskope.com/api/v2/events"
```

Note that in the file you will need to add your tenant domain in line 18 of the yaml file.

In addition to the local file you will also need your Netskope API token from your tenant with Read  permissions for the below Netskope API v2 endpoints:

For more information on creating a v2 API token please refer to: [REST API v2 Overview - Netskope Knowledge Portal](https://kb.netskope.com/s/article/REST-API-v2-Overview)

**Uploading Netskope Plugin as a custom Plugin**
Installing custom plugins
This is where you will upload the Netskope Threat Hunting and Reporting Plugin.

**Plugin requirements**
Every Security Copilot plugin requires a YAML or JSON formatted manifest file, for example skillset.yaml or skillset.json, which describes metadata about the plugin and how to invoke the plugin.

This method is how we will upload the Netskope plugin with various skills.

1. Select the Security Copilot plugin icon.
2. In Manage plugins, scroll down to the Custom section.
3. Select Add plugin. You can choose between a Security Copilot plugin or an OpenAI plugin.
4. Under Select an upload format click Security Copilot plugin and upload the yaml file you created in Requirements section. 
5. Finally you will be able to paste the API token you gathered in the previous steps from Netskope. (See above)

**Sample Netskope Prompts**

You can also directly invoke any of the 11 skills directly by searching for the skill after typing /

When you directly invoking a skill you will need to input the epoch timestamp as seen above.

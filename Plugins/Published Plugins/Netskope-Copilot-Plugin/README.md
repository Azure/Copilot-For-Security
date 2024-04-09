# MsftCoPilotPlugin

Microsoft has enhanced Security Copilot by preinstalling a set of plugins for their security services and frequently used websites. Additionally, you have the option to incorporate Netskope custom plugins, expanding Gen AI capabilities on your Netskope platform.

Requirements
Ensure you have an active Microsoft Security CoPilot account and are able to login to: https://securitycopilot.microsoft.com/
For more information on Security CoPilot please visit: Get started with Microsoft Security Copilot Early Access Program
Create a local yaml file called NetskopeCoPilotSkill.yaml (filename can be anything). And paste the below in your yaml file:

https://github.com/mitchellgulledge2/MsftCoPilotPlugin/blob/main/Manifest.yaml

Note that in the file you will need to add your tenant domain in line 18 of the yaml file.

In addition to the local file you will also need your Netskope API token from your tenant with Read  permissions for the below Netskope API v2 endpoints:

![image](https://github.com/mitchellgulledge2/MsftCoPilotPlugin/assets/145486744/9e9c9c6e-bc48-47b7-b3df-b0c42ac1b221)

![image](https://github.com/mitchellgulledge2/MsftCoPilotPlugin/assets/145486744/0b5535b9-0f88-4a3b-991d-551520e99668)

For more information on creating a v2 API token please refer to: https://docs.netskope.com/en/netskope-help/admin-console/rest-api/rest-api-v2-overview-312207/

Uploading Netskope Plugin as a custom Plugin
Installing custom plugins
This is where you will upload the Netskope Threat Hunting and Reporting Plugin.

Every Copilot plugin requires a YAML or JSON formatted manifest file, for example skillset.yaml or skillset.json, which describes metadata about the plugin and how to invoke the plugin. This is provided in the link above.  

1. Select the Security Copilot plugin icon.

2. In Manage plugins, scroll down to the Custom section.

![image](https://github.com/mitchellgulledge2/MsftCoPilotPlugin/assets/145486744/f5f98d18-72c1-4b89-8849-7c86e3e3a746)

3. Select Add plugin. You can choose between a Security Copilot plugin or an OpenAI plugin.

 ![image](https://github.com/mitchellgulledge2/MsftCoPilotPlugin/assets/145486744/4e1a4e73-c361-4b0e-a5ef-648f3dee84df)

4. Under Select an upload format click Security Copilot plugin and upload the yaml file you created in Requirements section.

![image](https://github.com/mitchellgulledge2/MsftCoPilotPlugin/assets/145486744/17b535b0-1e93-4efa-9fd2-5cebaade63e4)

5. Finally you will be able to paste the API token you gathered in the previous steps from Netskope. (See above)

Sample Netskope Prompts

![image](https://github.com/mitchellgulledge2/MsftCoPilotPlugin/assets/145486744/cf4ca7b8-18da-4a29-a432-46a231c9cf17)
![image](https://github.com/mitchellgulledge2/MsftCoPilotPlugin/assets/145486744/b422225b-7803-4fde-93c2-ad2e16fd8f91)
![image](https://github.com/mitchellgulledge2/MsftCoPilotPlugin/assets/145486744/65dc4d28-6000-4e21-81b7-560f5e42f632)
![image](https://github.com/mitchellgulledge2/MsftCoPilotPlugin/assets/145486744/029eccfa-4691-4e75-a8e0-d38e5c8e7945)
![image](https://github.com/mitchellgulledge2/MsftCoPilotPlugin/assets/145486744/0103c513-4246-4051-9555-59526f7a4477)

You can validate the 6 Skills are visible by entering /get as seen below:

![image](https://github.com/mitchellgulledge2/MsftCoPilotPlugin/assets/145486744/f6f458d5-e5d5-426b-a1ff-d38ccb866896)


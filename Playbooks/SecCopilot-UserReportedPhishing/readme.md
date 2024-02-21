# Sec-Copilot-UserReportedPhishing
Author: Yaniv Shasha


### As of this moment, please deploy this logic app in West-US-2 region

By initiating the deployment process, you will set up an Azure Logic App integrated with Security Copilot Actions.<br>
This setup activates when a user reports a phishing attempt in Outlook.<br>
As configured by Defender for Office, these reported emails are rerouted to a designated shared mailbox.<br>
Each new email arriving in this shared mailbox triggers the Security Copilot automation, initiating an automated investigation process.<br> 
During this phase, Security Copilot examines the email to determine the likelihood of it being a phishing attempt.<br>
Depending on the assessed risk level, the system will send a notification email.<br>
Additionally, if the phishing probability exceeds 75%, a Sentinel Incident will be automatically generated.<br>


### Before starting the installation, ensure you have fulfilled these prerequisites:

• The user deploying this Logic app must possess a Contributor Role.<br>
• Activation of the Security Copilot license on your tenant is required.<br>
• The user authenticated in the Copilot logic app action should have Security Admin permissions and the role of a Microsoft Sentinel contributor, as this is necessary for creating incident comments.<br>

 
<br>

<br>

<img src="https://github.com/Yaniv-Shasha/SecurityCopilot/blob/00853308e8949cc7279640aa9743759f586bb190/Playbooks/Copilot-Sentinel_investigation-DynamicSev/images/copilot_auth.jpg"/>

<br>

<img src="https://github.com/Yaniv-Shasha/SecurityCopilot/blob/00853308e8949cc7279640aa9743759f586bb190/Playbooks/Copilot-Sentinel_investigation-DynamicSev/images/Sentinel_auth.jpg"/>

<br>



### Deployment 

To deploy the above logic app, you need to<br>
•   Press on the Deploy option, select your subscription and the resource group (select the same tenant that Security Copilot is enabled)<br>

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FYaniv-Shasha%2FSecurityCopilot%2Fmain%2FPlaybooks%2FSecCopilot-UserReportedPhishing%2Fazuredeploy.json" target="_blank">
    <img src="https://aka.ms/deploytoazurebutton"/>


###  Full Logic App view

<img src="https://github.com/Yaniv-Shasha/SecurityCopilot/blob/8ffa89a6dd404ae62881b2ff9b7f0bfb96718a4a/Playbooks/SecCopilot-UserReportedPhishing/images/full_logic_app.jpg"/>


###  Phishing condition  

<img src="https://github.com/Yaniv-Shasha/SecurityCopilot/blob/8ffa89a6dd404ae62881b2ff9b7f0bfb96718a4a/Playbooks/SecCopilot-UserReportedPhishing/images/conditations.jpg"/>

###  Notification Email Send 

<img src="https://github.com/Yaniv-Shasha/SecurityCopilot/blob/8ffa89a6dd404ae62881b2ff9b7f0bfb96718a4a/Playbooks/SecCopilot-UserReportedPhishing/images/email_results.jpg"/>

###  Sentinel Incident

<img src="https://github.com/Yaniv-Shasha/SecurityCopilot/blob/8ffa89a6dd404ae62881b2ff9b7f0bfb96718a4a/Playbooks/SecCopilot-UserReportedPhishing/images/sentinel%20incident.jpg"/>
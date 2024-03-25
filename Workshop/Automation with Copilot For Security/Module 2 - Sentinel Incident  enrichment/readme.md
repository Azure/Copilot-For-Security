## Microsoft Sentinel Incident Enrichment and Triage with Logic apps and Microsoft Copilot for Security 

![Security CoPilot Logo](https://github.com/Azure/Copilot-For-Security/blob/main/Images/ic_fluent_copilot_64_64%402x.png)
#### ⌛ Estimated time to complete this lab: 10 minutes
#### 🎓 Level: 100 (Beginner)

#### Objectives

Upon completing this technical guide, you will gain the following abilities:<br>

* Deploy an Azure Logic App capable of handling Microsoft Copilot for Security prompts.<br>
* Enrich incients on Microsoft Sentinel with Threat intelligence , Entra permissions infromation and Device management from intune with defeinded summaries

#### Scenario
In this comprehensive technical workshop, participants will delve into the deployment process of a specialized Logic App, Activating the 'Deploy' button will initiate the deployment of an Azure Logic App integrated with Security Copilot Actions, which utilizes a Microsoft Sentinel incident trigger. <br>
This Logic App will transition the incident status to active, generate dynamic tags (labels), and append them to the sentinel incident tags.  <br>
Furthermore, the automation will determine and adjust the incident severity based on MDTI enrichment.  <br>
It will also comprehensively document the investigation findings and the logic behind the incident classification in the comments section of the Microsoft sentinel incident. <br>
To successfully complete this task, you must meet the following prerequisites:<br>
Prior to beginning the installation process, it's crucial to confirm that you have met the following prerequisites: <br>
• The user that will deploy this Logic app need to have a Contributor Role.<br>
• You enabled the Security Copilot license on your tenant <br>
• The user that authenticted in the Copilot logic app action, need to have Security Admin permission and Microsoft sentinel contributer (as its need to create incident comment).<br>

<img src="https://github.com/Yaniv-Shasha/SecurityCopilot/blob/00853308e8949cc7279640aa9743759f586bb190/Playbooks/Copilot-Sentinel_investigation-DynamicSev/images/copilot_auth.jpg"/>

<br>

<img src="https://github.com/Yaniv-Shasha/SecurityCopilot/blob/00853308e8949cc7279640aa9743759f586bb190/Playbooks/Copilot-Sentinel_investigation-DynamicSev/images/Sentinel_auth.jpg"/>

<br>

• This logic app can be run in a manual way, or in automatic way, if you select the automated way, you will need to create a new automation rule in Sentinel and configure this logic app as an action.<br>


<br>

### Deployment 

To deploy the above logic app, you need to<br>
•   Press on the Deploy option, select your subscription and the resource group (select the same tenant that Security Copilot is enabled)<br>

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FYaniv-Shasha%2FSecurityCopilot%2Fmain%2FPlaybooks%2FCopilot-Sentinel_investigation-DynamicSev%2Fazuredeploy.json" target="_blank">
    <img src="https://aka.ms/deploytoazurebutton"/>
</a>
<br>

### Post Deployment

•   Authenticate with the users mention above (you can use different user for the Copilot actions and to the sentinel actions)<br>
•   To run the logic app in a manual way, open Microsoft Sentinel incident page, right click on specific incident and press run playbook, select logic app you just deploy and press run.<br>
•   To run the logic in automatic way, create an automation rule in sentinel and connect this playbook as the action for this rule.<br>


<img src="https://github.com/Yaniv-Shasha/SecurityCopilot/blob/ccbd305c539800eea2a1f7c1a0905aff954e2e25/Playbooks/Copilot-Sentinel_investigation-DynamicSev/images/full_logic_app.jpg"/>



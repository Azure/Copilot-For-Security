# Workshop Focus: Deploying a Logic App to Generate and Distribute Threat Bulletins from Microsoft Defender Threat Intelligence (MDTI) through Microsoft Copilot for Security 
![Security CoPilot Logo](https://github.com/Azure/Copilot-For-Security/blob/main/Images/ic_fluent_copilot_64_64%402x.png)
#### ⌛ Estimated time to complete this lab: 10 minutes
#### 🎓 Level: 100 (Beginner)

#### Objectives

Upon completing this technical guide, you will gain the following abilities:<br>

* Deploy an Azure Logic App capable of handling Microsoft Copilot for Security prompts.<br>
* Receive Emails of up to date threat Bulletins ( articles) from Microsoft Defender Threat intelligence

#### Scenario
In this technical workshop, participants will learn how to deploy a Logic App designed to produce threat bulletins sourced from Microsoft Defender Threat Intelligence (MDTI) and send them to a designated email address. The workshop will cover the process of setting up the Logic App to gather threat intelligence information, create bulletins, and automate the distribution process via email.
To successfully complete this task, you must meet the following prerequisites:<br>

1.  You need your own tenant and Microsoft Copilot for Security instance.<br>
2. **Azure Subscription**: You need an active [Azure subscription](https://azure.microsoft.com/en-us/free/) to create and deploy a Logic App.
3. **Azure Resource Group**: Logic Apps are deployed within [Azure resource groups](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups). Ensure that you have an appropriate resource group created or create one during the deployment process.
4. **Access Permissions**: Ensure that you have the necessary [permissions](https://docs.microsoft.com/en-us/azure/role-based-access-control/overview) to create resources in the Azure subscription and resource group where you plan to deploy the Logic App.

## Deployment
<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FKwachSean%2FSecurityCopilot%2Fmain%2Fplaybooks%2FThreatBulletinCopilot%2Fazuredeploy.json" target="_blank">
    <img src="https://aka.ms/deploytoazurebutton"/>

</a>

### Post-Deployment Instructions

1. Select the freaquency on how many times you want the Logic App to run 
2. Authenticate the Copilot Prompts with a User that has Access to Security Copilot 
3. Proceed to run the Logic app and Prepare for the results 

Logic App View
![Threat Bulletin Logic App](https://github.com/KwachSean/SecurityCopilot/raw/main/playbooks/ThreatBulletinCopilot/threatbulletinlogicapp.png)

Results of the Logic APP
![Threat Bulletin Image](https://github.com/KwachSean/SecurityCopilot/raw/main/playbooks/ThreatBulletinCopilot/Threatbulletin.png)


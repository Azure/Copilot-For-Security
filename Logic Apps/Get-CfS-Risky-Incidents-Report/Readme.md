# Tutorial: Generate Copilot for Security Risky Incident Reports 

Intent: As a SecOps Analyst or Manager, I want to automatically create detailed incident reports summazrizing critical investigation tasks and evidence for the riskiest incidents in my organization.

The [Incident Report Skill](https://learn.microsoft.com/en-us/defender-xdr/security-copilot-m365d-create-incident-report) in Copilot for Security generates a detailed incident report based on the automated actions, the analysts involved in the incident response, and the comments from the analysts. Whether security teams are using Microsoft Sentinel, Defender XDR, or both, all relevant incident data are added into the generated incident report.

One way to automatically gather critical evidence pertaining to an incident is to utilze the [Sentinel Triage Assistant (STAT)](https://techcommunity.microsoft.com/t5/microsoft-sentinel-blog/introducing-the-microsoft-sentinel-triage-assistant-stat/ba-p/3845846). STAT gathers all related evidence pertaining to the incident's entities through various [STAT Modules](https://github.com/briandelmsft/SentinelAutomationModules/tree/main/Modules) and adds the related evidence as Comments on the incident. This means that the Copilot for Security Incident Report skill can utilize this evidence when generating an incident report. STAT also has a [Risk Scoring](https://github.com/briandelmsft/SentinelAutomationModules/tree/main/Modules/ScoringModule) that allows you to generate an integer value indicating the overall risk level of an incident. The Incident Risk Score allows us to tag incidents with an integer value associated with the total risk, we can regularly look for incidents with the highest risk level to generate incident reports using Copilot for Security.

These incident reports could be run post mortem, during incident creation (after STAT runs), or on a schedule to spot check how analysts completed incident work.

## Prerequisites

Microsoft Sentinel configured with the new [Unified SOC Preview](https://learn.microsoft.com/en-us/azure/sentinel/connect-microsoft-365-defender?tabs=MDE) enabled 

[Sentinel Triage Assistant (STAT)](https://github.com/briandelmsft/SentinelAutomationModules) deployed, with scoring module, and incidents in Sentinel tagged as "Risk Score - totalRiskScore".

[Microsoft Copilot for Security](https://learn.microsoft.com/en-us/copilot/security/get-started-security-copilot) deployed with available SCU Capacity.

## Step 1: Deploy this logic app to your organization

If your Azure environment meets the prerequisites, and you're familiar with using Azure Resource Manager templates, these steps help you sign in directly to Azure and open the Azure Resource Manager template in the Azure portal. For more information, see the article, [Deploy resources with Azure Resource Manager templates and Azure portal](https://docs.microsoft.com/azure/azure-resource-manager/templates/overview).

Select the following image to sign in with your Azure account and open the logic app in the Azure portal:

   [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FSCStelz%2FAzure-Sentinel%2Fmaster%2FPlaybooks%2FGet-CompromisedPasswords%2Fazuredeploy.json)

1. In the portal, on the **Custom deployment** page, enter or select these values:

   | Property | Value | Description |
   |----------|-------|-------------|
   | **Subscription** | <*Azure-subscription-name*> | The name for the Azure subscription to use |
   | **Resource group** | <*Azure-resource-group-name*> | The name for a new or existing Azure resource group |
   | **Region** |  <*Azure-region-for-all-resources*> | The Azure region to use for all resources, if different from the default value. This example uses the default value which is the resource group location. |
   | **Playbook Name**|  <*PlaybookName*> | This is the name for the deployed Logic App. |
   | **Incident Count** | <*incidentCount*> | Maximum number of incident to return (ie. 10) |
   | **Look Back Days** | <*lookBack*> | How many days to look back (ie. -7) |
   | **Min Risk Score** | <*minRiskScore*> | Minimum STAT Risk Score of Incidents (ie. 0) |

1. When you're done, select **Review + Create** and finally **Create**.

## Step 2: Authenticate your logic app to Azure AD with the right permissions

Edit the Logic App and modify the connections for the following Actions

Get Riskiest Incidents - Modify this connection with an identity with permission to connect to your Log Analytics workspace where your Sentinel incidents reside. Ensure you select your Subscription, Resource Group, Resource Type and Resource Name to point to your Log Analytics Workspace.

Cfs Risk Incident Report - Modify this connection with an identity with permissions to connect to your Copilot for Security instance.

Post Risk Incident Report in Teams Channel - Modify this connection with an identity with permissions to post a message to a Teams Channel. Don't for get to choose your Team and Channel ID.

Add Risk Incident Report to Incident and Tag Risk Incident with Copilot Summary - Modify these connections with an identity with access to modify incidents within your Sentinel workspace.

## Next steps

This Logic App is scheduled to run weekly, you can modify the schedule from the initial recurrance step.

You can modify the KQL query in the Get Riskiest Incidents action, by default this query looks at the SecurityIncident table in Sentinel, and parses out the tagged STAT Risk Score from the labels column. It then outputs the top 10 riskiest incidents based on the total risk score tagged on STAT incidents. Feel free to modify this query to look at all incidents, or incidents with a certain status (ie. Closed or Resolved only), etc.

1. Manually trigger the Playbook or wait for its scheduled run.
2. Copilot for Security will generate Incident reports on each incident found, add the incident report to the incident via a Sentinel comment, tag the incident with "Copilot Summary", and post the Incident report to a desired Teams channel.

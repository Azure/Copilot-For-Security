## Leveraging the Microsoft Copilot For Security logic app Connector

![Security CoPilot Logo](https://github.com/Azure/Copilot-For-Security/blob/main/Images/ic_fluent_copilot_64_64%402x.png)
#### ⌛ Estimated time to complete this lab: 10 minutes
#### 🎓 Level: 100 (Beginner)

Logic app connector documentation : https://learn.microsoft.com/en-us/security-copilot/connector_logicapp

#### Objectives

Upon completing this technical guide, you will gain the following abilities:<br>

* Deploy an Azure Logic App capable of handling Microsoft Copilot for Security prompts using the Logic app connector .<br>

#### Prerequisites
To successfully complete this task, you must meet the following prerequisites:<br>

1.  You need your own tenant and Microsoft Copilot for Security instance.<br>
2. **Azure Subscription**: You need an active [Azure subscription](https://azure.microsoft.com/en-us/free/) to create and deploy a Logic App.
3. **Azure Resource Group**: Logic Apps are deployed within [Azure resource groups](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups). Ensure that you have an appropriate resource group created or create one during the deployment process.
4. **Access Permissions**: Ensure that you have the necessary [permissions](https://docs.microsoft.com/en-us/azure/role-based-access-control/overview) to create resources in the Azure subscription and resource group where you plan to deploy the Logic App.

## Steps to Follow
### 1. Create a consuption logic app resource thats hosted in multitenant Azure logoc apps 

- In the Azure portal search box, enter logic apps, and select Logic apps.
- On the Logic apps page toolbar, select Add.
- On the Create Logic App page, first select the Plan type for your logic app resource. That way, only the options for that plan type appear.
- When you're done, your settings look similar to the following example:
- When you're ready, select Review + Create.
- On the validation page that appears, confirm all the provided information, and select Create.

### 2. Select the blank logic app workflow template.
- After Azure successfully deploys your logic app resource, select Go to resource. Or, find and select your logic app resource by typing the name in the Azure search box
- Scroll down past the video and the section named Start with a common trigger.
- Under Templates, select Blank Logic App.

### 3.  Add a trigger that specifies when to run the workflow.
- on the workflow designer , select a trigger 

### 4.  Add the Copilot for Security Logic App connector within the workflow 
- Select the Logic App Copilot For Security Connector 
- Authenticate the Logic App Copilot For Security Connector 
- Add context on the prompt 
- Review the paramateres in the Logic App Copilot for Security connector
Optional Parameters and Inputs:

Prompt Content: Prompt to be evaluated 
Session Id: Session context
Skill Inputs: Optional JSON body specifying values for required plugin (skill) parameters
Skill Name: Call directly to a skill (bypass planner)
Skillsets: Call directly to a skillset (bypass planner)

- Save the workflow 

### 5. Run your workflow.
- RUn the workflow ( success )

### 6. View the Outcome of the Workflow on the Logic app connector and the Standalone Portal  
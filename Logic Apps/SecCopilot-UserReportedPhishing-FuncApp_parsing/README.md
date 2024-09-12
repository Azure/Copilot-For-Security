# User Submitted Phishing Analysis with Copilot for Security
Author: Yaniv Shasha & Craig Freyman

This solution automates the analysis of user-submitted phishing emails using Copilot for Security. It monitors a shared inbox, triggering a Logic App upon new email arrival. The Logic App processes the email using a Function App, which extracts relevant details, leverages the MDTI Copilot for Security Skills for reputation insights, and sends the results to an email recipient. 

## Notes
If you want to change the function app code you can git clone the repo. Every time you change the FunctionApp code, be sure to repackage the FunctionApp.zip file. The zip file is what is referenced when the solution is deployed. You might need a local .python_packages if the "push to deploy" doesn't work with Function App deployment. 

## Deploy the Solution

### Step 1: Deploy the Function App

Click the button below to deploy the Function App. You'll be prompted to select or create a resource group and provide a unique Function App name. Ensure the Function App is fully deployed before starting the Logic App deployment.

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2FCopilot-For-Security%2Fmain%2FLogic%2520Apps%2FSecCopilot-UserReportedPhishing-FuncApp_parsing%2Ffunctionapp_azuredeploy.json)

### Step 2: Deploy the Logic App

Click the button below to deploy the Logic App. Note your Function App name & resource group from the previous step. You will enter this information in the deployment screen. 

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2FCopilot-For-Security%2Fmain%2FLogic%2520Apps%2FSecCopilot-UserReportedPhishing-FuncApp_parsing%2Flogicapp_azuredeploy.json)


### Step 3: Initialize O365 and Security Copilot API connections

Open your new Logic App.

Click "API Connections"

![alt text](image.png)

Authorize both of the API connections.
![alt text](image-1.png)

### Step 4: Enable the Logic App
![alt text](image-3.png)

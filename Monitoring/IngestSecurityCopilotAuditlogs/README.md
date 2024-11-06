# Ingest Security Copilot Audit logs
This function app is designed to ingest Security Copilot Audit logs

The Azure Function App uses a PowerShell script to collect Security Copilot Audit logs and ingests into a custom table (CFS_Audit). The secrets for the required connections are stored in Azure Key Vault. 
***Note***: Custom Logs are a billable data source.

![Function App](./images/Picture1.png)<br>

Let’s get started with the configuration! 

### Preparation 
The following tasks describe the necessary preparation and configurations steps. 
- Register an application in Azure AD 
- Create an Office 365 Management Activity API Subscription 
- Deploy the Azure Function App 
- Post Configuration Steps for the Function App and Key Vault 
- How to Use the Activity Logs in Azure Sentinel 

### Register an application in Azure AD 
The Azure AD app is later required to use it as service principle for the [Azure Funtion App](https://github.com/sreedharande/IngestSecurityCopilotAuditlogs) app. 

1. Go to **Azure Active Directory** / **App Registrations**
2. Create **New Registration**<br>
![App Registration](./images/Picture2.png)<br>
3. Call it "O365APItoAzureSentinel".  Click **Register**.
4. Click **API Permissions** Blade.
5. Click **Add a Permission**.  
6. Click **Office 365 Management APIs**.
7. Click **Appplication Permissions**
8. Check **ActivityFeed.Read** and **ActivityFeed.ReadDlp**.  Click **Add permissions**.<br>
![Permissions](./images/Picture5.png)<br>
9. Click **Grant admin consent for ...**.<br>
![Admin Consent](./images/Picture6.png)<br>
10. Click **Certificates and Secrets** blade.
11. Click **New Client Secret**.
12. Enter a description, select **never**.  Click **Add**.<br>
![Secret](./images/Picture3.png)<br>
13. **IMPORTANT**.  Click **copy** next to the new secret and paste it somewhere temporaily.  You can not come back to get the secret once you leave the blade.
14. Copy the **client Id** from the application properties and paste it somewhere.
15. Also copy the **tenant Id** from the AAD directory properties blade.

For the deployment of [Azure Funtion App](https://github.com/Azure/Copilot-For-Security/Monitoring/IngestSecurityCopilotAuditlogs), make a note of following settings: 
- The Azure AD Application ID 
- The Azure AD Application Secret 
- The Tenant ID 
- The Tenant Domain 

### Create an Office 365 Management Activity API Subscription 
After successfully creating the service principles, run the following PowerShell script to register the API subscription.
1. Open a PowerShell terminal.
2. Run the following, replacing variables with strings from the previous steps.
```powerhshell
$ClientID = "<GUID> from AAD App Registration"
$ClientSecret = "<clientSecret> from AAD App Registrtion"
$loginURL = "https://login.microsoftonline.[com][us]/"
$tenantdomain = "<domain>.onmicrosoft.[com][us]"
$TenantGUID = "<tenantguid> from AAD"
$resource = "https://manage.office.[com][us]"
$body = @{grant_type="client_credentials";resource=$resource;client_id=$ClientID;client_secret=$ClientSecret}
$oauth = Invoke-RestMethod -Method Post -Uri $loginURL/$tenantdomain/oauth2/token?api-version=1.0 -Body $body
$headerParams = @{'Authorization'="$($oauth.token_type) $($oauth.access_token)"} 
$publisher = "<randomGuid>" Get a guid from https://guidgenerator.com/
```
3. Run this command to enable **Audit.General** Subscription. 
```powershell
Invoke-WebRequest -Method Post -Headers $headerParams -Uri "https://manage.office.[com][us]/api/v1.0/$tenantGuid/activity/feed/subscriptions/start?contentType=Audit.General&PublisherIdentifier=$Publisher"
```
4. Run this command to enable **DLP.ALL** subscription
```powershell
Invoke-WebRequest -Method Post -Headers $headerParams -Uri "https://manage.office.[com][us]/api/v1.0/$tenantGuid/activity/feed/subscriptions/start?contentType=DLP.ALL&PublisherIdentifier=$Publisher"
```
5. A successful output looks like as below. <br>
![Output](./images/Picture7.png)<br>

### Deploy the Azure FunctionApp 
1. Click to **Deploy the template / Deploy to Azure** below.

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2FCopilot-For-Security%2Frefs%2Fheads%2Fmain%2FMonitoring%2FIngestSecurityCopilotAuditlogs%2Fazuredeploy_functionapp.json)

2. Now it is time to use the noted details from previous steps.  
- Select the right **Subscription**, **Resource Group** and **Region** where you what to deploy the Azure Funtion App.  
- Fill the Instance Details **Client ID**, **Client Secret**, **Tenant Domain**, **Publisher Guid**.  
- There is also a need of **Workspace ID** and **Workspace Key** from where Azure Sentinel is deployed. 
3. Click to **Review + create**, review the configuration and click **Create**. 


### Deploy Analytical Rules
[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2FCopilot-For-Security%2Frefs%2Fheads%2Fmain%2FMonitoring%2FIngestSecurityCopilotAuditlogs%2Fazuredeploy_analytics.json)

### Deploy Workbook 
[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https://raw.githubusercontent.com/Azure/Copilot-For-Security/refs/heads/main/Monitoring/IngestSecurityCopilotAuditlogs/azuredeploy_workbook.json)
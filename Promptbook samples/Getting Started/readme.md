![Security CoPilot Logo](https://github.com/Azure/Copilot-For-Security/blob/main/Images/ic_fluent_copilot_64_64%402x.png)
# Microsoft Copilot for Security PowerShell to manage PromptoBooks

The PowerShell script in 'PromptBooksUpload.ps1' allows you to upload multiple promptbooks at once. The promptbooks should be in JSON format and each promptbook should be in its own json file. Once the json files are created they should be in placed in the ./Files folder and the following command executed to upload them in your Copilot instance:

Powershell -file PromptBooksUpload.ps1 -token <authorization token>

Description of the JSON format and how to get the authorization token is give below:

# Promptbook JSON Format

The following is a template JSON format for a promptbook that executes two prompts in sequence. Most of the json property names are clear, one important thing you need to be mindful of is the sequenceNumber property for each prompt are sequential:

```
{"name":"Sample promptbook to use as a template",
"description":"This is sample promptbook JSON that can be used to generate other promptbooks",
"prompts":
[
 {"promptType":"Prompt","content":"Give me more information on <user>","skillName":null,"inputs":null,"plugins":[],"sequenceNumber":0},
 {"promptType":"Prompt","content":"Is this user considered risky","skillName":null,"inputs":null,"plugins":[],"sequenceNumber":1}
],
"promptbookinputs":
[
 {"name":"user","description":"User input"}
],
"visibility":"Private","tags":null}
```

Several Promptbook JSON files are provided in the Files folder so you can also reference them.

# Access Token

Currently, the Azure CLI login command cannot fetch the token for Copilot for Security. Hence, you will have to get the access token using an existing session from the Browser. In the Edge browser, login to the Copilot for Security console and after authentication process is complete via MFA etc, press 'F12' to open Browser dev tools.  

![Browser Tools](https://github.com/Azure/Copilot-For-Security/blob/main/Images/Promptbook Images/promptBook_devtools.png)

Then navigate into the Promptbooks from the console, and then filter on 'Promptbooks' in the devtools (in network tab). You can get the access token from the Request headers for the request make to the Promptbooks URI(https://api.securitycopilot.microsoft.com/geo/eastus/promptbooks). Copy the entire request token, making sure not to copy the 'Bearer' keyword and not copying any extra space.

Note that you can get the token from other URIs in the Copilot console, going to Promptbooks is just one of the ways. With the token copied you are ready to execute the PowerShell.


![Copy Access Token](https://github.com/Azure/Copilot-For-Security/blob/main/Images/Promptbook Images/promptBook_token.png)

# Execution

Navigate to the folder where the 'PromptBooksUpload.ps1' file is placed, same folder should have the 'Files' sub-folder containing all the promptbook JSON's. 

If your Copilot for Security instance is not in 'eastus' you will have to change the URI in 11 so the URI contains the correct region. The upload will fail is this is not corrected.

Execute the following command, pasting the token you copied form borwser after the -token command line arguement.

Powershell -file PromptBooksUpload.ps1 -token <authorization token>

![PowerShell Commandline](https://github.com/Azure/Copilot-For-Security/blob/main/Images/Promptbook Images/promptBook_commandLine.png)

As the PowerShell it will output the file name and the status of each of the file uploads. If you get error please see the troubleshooting section.

![PowerShell Successful execution](https://github.com/Azure/Copilot-For-Security/blob/main/Images/Promptbook Images/promptBook_results.png)

IMPORTANT: After the upload if successful, please logout of your Copilot for Security console so that the authorization token is no longer valid. While the token validity is only for a fixed amount of time, for security reasons it is recommended to do an explicit logout so the token cannot be used again.

# Troubleshooting:

- If you get a 401 error please make sure the token is valid. It should not have expired or have any leading or trailing spaces when you paste it. Also make sure the URI in the PowerShell script has the correct region specified. 
- If you get 400 Error, please verify the correctness of the prompt JSON file. Specifically if you are using a variable, make sure it is named correctly in your prompts and in the 'promptbookinputs' section. The variable is case sensitive, and the token name and its description cannot be the same text.
- In case of an error 500, check the JSON format. A missing or extra ',' is not an acceptable JSON, and it is advsed to ryou your JSON via formatter to identify any formatting issues. 

**Documentation**
- [Using Promptbooks | Microsoft Learn](https://learn.microsoft.com/en-us/security-copilot/using-promptbooks)
- [Build your own promptbooks | Microsoft Learn](https://learn.microsoft.com/en-us/security-copilot/build-promptbooks)

**Prerequisites**
- Check if you have appropriate access and permissions to create promptbooks.[Understand authentication in Microsoft Security Copilot | Microsoft Learn](https://learn.microsoft.com/en-us/security-copilot/authentication)


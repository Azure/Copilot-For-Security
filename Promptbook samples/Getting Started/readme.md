![Security CoPilot Logo](https://github.com/Azure/Copilot-For-Security/blob/main/Images/ic_fluent_copilot_64_64%402x.png)
# Microsoft Copilot for Security PowerShell to manage Promptbooks

The PowerShell script 'PromptBooksUpload.ps1' allows you to upload multiple Promptbooks at once. The Promptbooks should be in JSON format and each Promptbook should be in its own JSON file. Once the JSON files are created they should be in placed in the ./Files folder and the following command executed to upload them in your Copilot instance:

Powershell -file PromptBooksUpload.ps1 -token <authorization token>

Description of the JSON format and instructions on obtainingthe authorization token are given below:

# Promptbook JSON Format

The following is a template JSON format for a promptbook that executes two prompts in sequence. Most of the JSON property names are self-descriptive, one important thing you need to be mindful of is the sequenceNumber property for each prompt are sequential numbers starting with 0.

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

Several Promptbook JSON files have been provided in the Files folder so you can reference them.

# Access Token

Currently, the Azure CLI login command cannot fetch the token for Copilot for Security. Hence, you will need to get the access token from an existing session in the Browser. In the Microsoft Edge browser, login to the Copilot for Security console and after authentication process is complete via MFA etc, press 'F12' to open Browser devtools.  

![Browser Tools](https://github.com/Azure/Copilot-For-Security/blob/main/Images/Promptbook_Images/promptBook_devtools.png)

Then navigate into the Promptbooks from the console, and then filter on 'Promptbooks' in the devtools (in network tab). You can get the access token from the headers for the GET request make to the Promptbooks URI(https://api.securitycopilot.microsoft.com/geo/eastus/promptbooks). Copy the entire request token, making sure not to copy the 'Bearer' keyword and not copying any extra space.

Note that you can get the token from other URIs in the Copilot console, going to Promptbooks is just one way. With the token copied you are ready to execute the PowerShell.

![Copy Access Token](https://github.com/Azure/Copilot-For-Security/blob/main/Images/Promptbook_Images/promptBook_token.png)

# Execution

Navigate to the folder where the 'PromptBooksUpload.ps1' file is placed, same folder should have the 'Files' sub-folder containing all the Promptbook JSON's. 

If your Copilot for Security instance is not in 'eastus' you will have to change the URI in line 11 so the URI contains the correct region. The upload will fail is this is not corrected.

Execute the following command, pasting the token you copied form borwser after the -token command line arguement.

Powershell -file PromptBooksUpload.ps1 -token <authorization token>

![PowerShell Commandline](https://github.com/Azure/Copilot-For-Security/blob/main/Images/Promptbook_Images/promptBook_commandLine.png)

As the PowerShell executes it will output the file name and the status of each of the file uploads. If you get an error please see the troubleshooting section.

![PowerShell Successful execution](https://github.com/Azure/Copilot-For-Security/blob/main/Images/Promptbook_Images/promptBook_results.png)

IMPORTANT: After the upload is successful, please logout of your Copilot for Security console so that the authorization token is no longer valid. While the token is valid for only a fixed amount of time, for security reasons you should do an explicit logout so the token cannot be used again.

# Troubleshooting:

- If you get a HTTP 401, please make sure the token is valid. It should not have expired or have any leading or trailing spaces when you paste it. Also make sure the URI in the PowerShell script has the correct region specified. 
- If you get HTTP 400, please verify the correctness of the prompt JSON file. Specifically if you are using a variable, make sure it has the same name in your prompts and in the 'promptbookinputs' section. The variable is case sensitive, and the token name and its description cannot be the same text.
- In case of HTTP 500, check the JSON format. A missing or extra ',' is not an acceptable JSON, and it is advised to run your JSON via a formatter to identify any issues. 

**Documentation**
- [Using Promptbooks | Microsoft Learn](https://learn.microsoft.com/en-us/security-copilot/using-promptbooks)
- [Build your own promptbooks | Microsoft Learn](https://learn.microsoft.com/en-us/security-copilot/build-promptbooks)

**Prerequisites**
- Check if you have appropriate access and permissions to create promptbooks.[Understand authentication in Microsoft Security Copilot | Microsoft Learn](https://learn.microsoft.com/en-us/security-copilot/authentication)


## Configure Tanium integration with Copilot for Security

Establish communication between a Tanium instance and Copilot for Security using:  

- a Tanium plugin manifest URL to upload the Tanium Skills custom plugin to Copilot for Security 

- a Tanium instance URL to connect Copilot for Security to the Tanium instance 

- a Tanium API token to grant Copilot for Security permission to query your network using Tanium and gather endpoint data 

1. In a browser window, navigate to the Microsoft Copilot for Security home page. 

2. Click Copilot for Security plugin. The Manage plugins modal window appears. 
![image](https://github.com/shuhblam/copilot-for-security/assets/745064/ec05f712-7489-46a5-a2be-7576bca0b2f1)

3. In the Custom section, click Add plugin. The Add a plugin modal window appears. 
![image](https://github.com/shuhblam/copilot-for-security/assets/745064/5254358d-8e71-4a9d-ab11-3d39e4a88fb6)

4. Select Who can use this plugin?.  

5. Click Copilot for Security plugin. 

6. Select the .json File type. 

7. In a separate browser window, navigate to Tanium Console.  

8. Select Modules > Connect > Overview. The Connect Overview page appears. 

9. Click Settings. Then click Microsoft Copilot for Security.  
![image](https://github.com/shuhblam/copilot-for-security/assets/745064/4c7c8e0d-6efc-48e2-874a-b6e6e022cde2)

10. Click Tanium Plugin Manifest URL Copy to copy the plugin manifest URL to the clipboard. 

11. In Copilot for Security, select Upload as a link. Then paste the Tanium Plugin Manifest URL. 

12. Click Add. The Set up Tanium Skills modal window appears. 
![image](https://github.com/shuhblam/copilot-for-security/assets/745064/82e9ad22-5031-4494-98dc-bafb4dc8971b)

13. In Tanium Console, click Tanium Instance URL Copy to copy the Tanium instance URL to the clipboard.  

14. In Copilot for Security, paste the Tanium Instance URL in the Set up Tanium Skills modal window. 

15. In Tanium Console, click Generate to generate an API token, valid for 365 days, and copy the token value to the clipboard. 

> You cannot view the token value in Tanium Console. Paste the value in a plaintext editor and save the file in a secure location if you want to record it for future reference. 


16. In Copilot for Security, paste the API token value in the Value field in the Set up Tanium Skills modal window.  

17. Click Set up. 


## Skills & Prompts
| Tanium Skill  | Description | Required Tanium solutions | Example natural language prompts |
| ------------- | ------------- | ------------- | ------------- |
| Count Endpoints Having Package Version | Retrieve the total count of endpoints that have the given software package| Asset, SBOM  | Using Tanium Skills, return the total number of endpoints with a software package for <software-name>, so that I can start cataloging which computers have the software installed. Display the results in a table, alphabetically sorted by host name. Thank you. |
| Get Vulnerability Test Results | Return whether an endpoint is vulnerable to a given CVE, and the reason why it is vulnerable | Comply | Using Tanium Skills, examine whether endpoint <hostname> is vulnerable to <cve-id>, and return the reasons that this endpoint is vulnerable, along with a suggested plan of action to remediate the intrusion. Thank you. |
| List Child Processes for Process File | Return all child processes running on an endpoint based on a given process file name  | Threat Response  | Using Tanium Skills, list the child processes of <process-name> so that I can analyze resource usage. Display the results in a table, alphabetically sorted by process name. Thank you. Using Tanium Skills, list the child processes of <process-name> that are running on the computer with the hostname <hostname>, so that I can analyze resource usage. Display the results in a table, alphabetically sorted by process name. Thank you. |
| List Endpoints Having Package | Retrieve up to 10 endpoints that have the given software package  | Asset, SBOM  | Using Tanium Skills, return the endpoints with a software package for <software-name> so that I can start cataloguing which computers might have an out-of-date version. Display the results in a table, alphabetically sorted by host name. Thank you. |
| List Endpoints with Process Name | Retrieve up to 10 endpoints running the given process  | Threat Response | Using Tanium Skills, return the endpoints running a process called <process-name>, so that I can ensure this process is not running on unexpected endpoints. Display the results in a table, sorted alphabetically by host name. Thank you. |
| List Endpoints with Process MD5 Hash | Retrieve up to 10 endpoints running the given process matching the provided MD5 hash value  | Threat Response  | Using Tanium Skills, return all endpoints that are running a process with the MD5 hash value <md5-hash-value>, so that I can ensure this process is not running under a different file name. Display the results in a table, sorted alphabetically by host name. Thank you. |
| List Endpoints Vulnerable To CVE  | Retrieve up to 10 endpoints vulnerable to a given CVE ID | Comply | Using Tanium Skills, return the endpoints vulnerable to <cve-id>, so that I can remediate the vulnerability on these endpoints. Display the results in a table, sorted alphabetically by host name. Thank you.  |
| List Process SHA-256 Hashes and Versions | Retrieve the SHA-256 file hash and version for a given process  | Asset, SBOM, Threat Response  | Using Tanium Skills, return the SHA-256 hash value and process version for the running process <process-name>, so that I can find other instances of this process based on the hash value. Thank you.  |
| List Processes Connected To IPv4 Address | Retrieve the processes running on an endpoint with the given IPv4 address | Threat Response  | Using Tanium Skills, return the processes running on the endpoint with the IPv4 address <ipv4-address>, so that I can analyze any potential security intrusions and resource usage. Display the results in a table, sorted alphabetically by process name. Thank you.  |
| List Process Ran As User  | Retrieve the processes running on an endpoint as a given user  | Threat Response  | Using Tanium Skills, return the processes running as the user <user-name>, so that I can determine whether there are issues with unauthorized access. Display the results in a table, sorted alphabetically by computer name. Thank you. Using Tanium Skills, return the processes running as the user <user-name> on the endpoint with the hostname <hostname>, so that I can determine whether there are issues with unauthorized access. Display the results in a table, sorted alphabetically by process name. Thank you. |


### Public Docs
To see the full documentation go [here](https://help.tanium.com/bundle/ug_connect_cloud/page/connect/ms_copilot_security.html)

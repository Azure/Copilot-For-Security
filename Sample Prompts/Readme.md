
<p align="left"><img src="../Images/libary.svg">

# Sample prompts Library 


Welcome to our page of sample prompts! Here, we offer a variety of examples to demonstrate how prompts can be used to achieve different security tasks. Our examples showcase how specific prompts can be utilized to perform a range of tasks. This is a collaborative page where people can learn from the examples and contribute their own.


We have organized our examples into the following categories:



- [Sample prompts Library](#sample-prompts-library)
  - [EASM](./EASM/Readme.md)
  - [Entra](./Entra/Readme.md)
  - [Intune](#intune)
  - [Defender \& Sentinel](#defender--sentinel)
  - [Threat Intelligence](#threat-intelligence)
  - [Vulnerabilities](#vulnerabilities)
  - [Purview](#purview)
  - [Script Analysis](#script-analysis)



***
&nbsp;
## EASM
<a name="EASM"></a>
Microsoft Defender External Attack Surface Management (EASM): 
- Show me the attack surface summary for **_`<Woodgrove Bank>`_**
- How many domains are expired in the  **_`<Woodgrove Bank>`_** organization's attack surface?
- How many SSL certificates are expired in the **_`<Woodgrove Bank>`_** attack surface?
- Are there any vulnerabilities impacting the host **_`<testsd.woodgrovebank.com>`_**?
- Provide the CVSS scores for the CVE IDs on the asset **_`<testsd.woodgrovebank.com>`_**
- What are the mitigation steps for the CVE **_`<CVE-ID>`_**?
- Show me the intel profile for **_`<Hazel Sandstorm>`_**
- Show me any associated indicators for the above actor.
- What are some of the domain indicators for this actor.
- Get me the reputations for hostname "service-logins.com"
- What are some of the web components for the ip address mentioned above?
- Get the most recent whois record for **_`<tmanniewith98.com>`_**
- Summarize threat intelligence articles related to the actor mentioned above.
- Are there any threat intelligence articles that reference the IOCs that were found?
- Show me the profiles of any threat actors referenced.
- Are any of these CVEs impacting my internet-facing assets? 
- Is my environment vulnerable to any of the CVEs from the list above? 
- Is my environment vulnerable to CVE **_`<CVE-ID>`_**?
- Check my cloud assets for vulnerabilities related to **_`<CVE-XXXX>`_**
- Create a report for this copilot session and include sections for: An Overview of MDEASM, The Summary of the Attack Surface for **_`<Woodgrove Bank>`_** List of Expired Domains and whois info, The list of Common Names from Expired SSL Certificates, Describe the Vulnerabilities on the Host **_`<testsd.woodgrovebank.com>`_** with CVSS scores, Detailed Steps for Mitigating Vulnerabilities on **_`<testsd.woodgrovebank.com>`_**


## Entra
<a name="Entra"></a>
 - Whoami
- Get terms of use agreements
- List all the licenses enabled on my tenant
- Show me the successfully deleted users in the last 7 days.
- Show me newly created conditional access policies from audit logs.
- Get conditional access policy related to 'authentication' in my tenant
- What is the status of the user account for **_`<UPN>`_**? Is it locked out?
- What login attempts exist for the user on December 31st? (Created KQL)
- What login attempts exist for the user in the last 14 days? (Created KQL) 
- What login attempts exist for the user **_`<UPN>`_**?   in the last 14 days? (Targeting a specific user)
- Is the user considered risky? If so, why? 
- List all risky user by risklevel
- Tell me more about user **_`<UPN>`_**?  in format-list.
- How many times login failed for this user in the last 30 days and tell me the reasons.
- Generate a report based on Entra plug-in: Is the user **_`<UPN>`_**?  considered risky? If yes, list the 
reasons. 
- Show me the most recent failed sign-in for my account in the last month.
-  Show me the sign-in logs of users who signed in from ,**_`<location>`_**? 
- Show me the sign-in logs from unmanaged devices in the past 14 days and list the entities involved
- What authentication methods are enabled for my account?
- List the groups I am part of
- List the groups **_`<Username>`_**?  is part of 
- Tell me about security group <**_`<name>`_**?  including who created it and how many members are in it.



[![alt text](../Images/backtotop.svg)](#sample-prompts-library)
## Intune
<a name="Intune"></a>
- Which devices are used by user **_`<UPN>`_**?
- Tell me about this device.
- Identify Weak hosts. 
- Could you give me the total number of devices in Intune?
- Show me configuration policies for this device.
- What groups is this device a member of?
- Tell me about managed apps on this device.
- Tell me about devices for **_`<Username>`_**?
- Show me the devices for **_`<Username>`_**?
- Show me the difference in managed applications for the above devices.
- How are managed apps on this device different from Shobhit's device? (Shobhit is another 
user in this example)
- What groups is <**_`<Appname>`_**? assigned to?
- Show me the users **_`<Notepad ++>`_** assigned to
- Show me the difference in the hardware for the above device
- Give me the status of the **_`<Devicename>`_**?. Is it managed, is it compliant with management 
policies?
- Tell me about the app policy that isn't compliant. Why would this device be failing this 
policy?
- Tell me about the app policy that isn't compliant. Why would this device not have the policy 
applied and why is it in a state of non-compliance?

[![alt text](../Images/backtotop.svg)](#sample-prompts-library)
## Defender & Sentinel
<a name="Defender_and_Sentinel"></a>
- Provide me a summary of Defender incident **_`<Incident ID>`_**?
- Tell me more about Sentinel incident **_`<Incident ID>`_**
- Extract the entities associated with the incident.
- If a user is listed in the incident details, show which devices they have used recently and 
indicate whether they are compliant with policies.
- Are there any defender incidents involving **_`<Username>`_** on December 31st, 2023? List the 
title, severity, timestamp, Attack Techniques, and Categories for any incidents containing his 
account name or alias. Search account name containing **_`<User full name>`_** or **_`<User first name>`_**
- List the 10 most critical defender incidents.
- Show defender incidents detected over the last 14 days and summarize the trends
- Write a report summarizing the investigation. Lead with a non-technical executive summary. 
Next provide the breakdown of the Defender incident report, the takeaways from the 
Sentinel Hunt, the Intune device state, and finally the threat intel summary
- Write a report summarizing the investigation. Lead with a non-technical executive summary. 
Next provide the breakdown of the Defender incident report, the takeaways from the 
Sentinel Hunt, the Intune device state, the threat intel summary, and finally next steps for 
remediation
-Can you provide me with a concise summary of the key actions and entities involved in this security incident?
- What are the critical Sentinel incidents right now?
- What are the critical Defender incidents right now?
- List the alerts on Sentinel incident **_`<Incident ID>`_**
- Check Defender for vulnerabilities related to **_`<CVE-XXXX>`_**
- List all Sentinel workspaces.
- List the last 5 incidents from Sentinel workspace **_`<Workspace ID>`_**
- Tell me more about **_`<Silk Typhoon>`_**, and include the IOCs and any TTPs associated with **_`<Silk Typhoon>`_**? 
- show me MITRE TTPs from M365D incidents in the last month.
- What is the MITRE TTP number for account manipulation?

[![alt text](../Images/backtotop.svg)](#sample-prompts-library)
## Threat Intelligence
<a name="Threat_Intelligence"></a>
- Summarize recent threat intelligence.
- What threat actors have been active lately?
- How should I harden my environment to prevent these attacks?
- Can you tell me about more specific threat intelligence related to the **_`<Financial services industry>`_**? 
- Can you help me with creating a KQL to search for relevant public IOCs from <**_`<Evilproxy>`_**
Phishing Attacks in Microsoft Defender? I would like to be able to search from a list of 
domains, IP addresses, and file hashes and add searching from alert evidence as well?
- Can you explain line by line what this KQL above is doing?
- Can you create the same KQL but adapt it for Sentinel?
- Write a KQL query to identity Log4J in my M365Defender and list resources that are 
impacted with the Log4J vulnerability. 
- It was observed that <**_`<Manatee Tempest>`_** was active in this event. Provide a summary of the 
actor and their intersection with ransomware. Note: Replace threat actor name
- Get me a profile of this threat actor <**_`<Manatee Tempest>`_**
- Are there known TTPs for this threat actor?
- If there are TI articles related to this threat actor, provide a list and summary of them & 
include links in the last week.
- If there were TI articles found, what recommendations does the first article in the list have 
for protecting against this actor?
- Provide a summary of <**_`<Manatee Tempest>`_** and a list of their brokered access 
methodologies.
- Summarize threat intelligence articles for <“T1585.001”>
- Show me 5 indicators per actor for the actors above
- Show threat intelligence info for <**_`<Aqua Blizzard>`_**
- Show relevant TTPs.
- Show a relevant list of indicators.

[![alt text](../Images/backtotop.svg)](#sample-prompts-library)
## Vulnerabilities
<a name="Vulnerabilities"></a>
- Summarize the latest Vulnerabilities from the last week.
- Summarize <**_`<CVE-XXXX>`_** vulnerability.
- What vulnerabilities have been exploited recently by threat actors?
- Which of these CVEs have known exploitations?
- Which technologies are impacted by each of these CVEs?
- Does [CveId] have known exploitations?
- Is my environment vulnerable to CVE [CVEID]? 

[![alt text](../Images/backtotop.svg)](#sample-prompts-library)
## Purview
<a name="Purview"></a>
- Show me the top 5 DLP alerts that I should prioritize today?
- Can you summarize purview alert <**_`<AlertID>`_**? 
- Can you summarize the risk associated with user: <**_`<UPN>`_** involved in this alert?
- What information does Purview have about the risk associated with this user?
- Which Purview Data Loss Prevention alerts should I prioritize today?
- Can you summarize the first purview alert?
- Tell me more about the user <**_`<UPN>`_**
- What was the data or action that triggered this alert?
- What are the data risks related to this alert?
- For the files related to the alert, show me all activities done in the last 7 days?
- Can you get me the status of labeling on these files
  
  
[![alt text](../Images/backtotop.svg)](#sample-prompts-library)
## Script Analysis
<a name="Script Analysis"></a>
- What actions are performed by this script?
- Explain how this script could be used maliciously
- Is this script malicious?
- Evaluate the provided script for malicious intent. Justify your assessment with supporting evidence and a confidence level.
- Write a PowerShell script to test the SMB versions and state across all the affected devices 
via remote connection.
- Write a PowerShell script to test the SMB versions and state across all the affected 
machines.
- Extract the entities from the script analysis (If script analysis is done)
- Give me recommendations to protect my organization against this script


[![alt text](../Images/backtotop.svg)](#sample-prompts-library)


<p align="right">
  <img src="../Images/libary.svg">
</p>

# Sample prompts Library
Welcome to our page of sample prompts! Here, we offer a variety of examples to demonstrate how prompts can be used to achieve different security tasks. Our examples showcase how specific prompts can be utilized to perform a range of tasks. This is a collaborative page where people can learn from the examples and contribute their own.

We have organized our examples into the following categories:



- [Sample prompts Library](#sample-prompts-library)
  - [EASM](#easm)
  - [Entra](#entra)
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
- Show me the attack surface summary for <Woodgrove Bank>
- How many domains are expired in the <Woodgrove Bank> organization's attack surface?
- How many SSL certificates are expired in the <Woodgrove Bank> attack surface?
- Are there any vulnerabilities impacting the host <testsd.woodgrovebank.com>?
- Provide the CVSS scores for the CVE IDs on the asset <testsd.woodgrovebank.com>
- What are the mitigation steps for the CVE <CVE-ID>?
- Show me the intel profile for <Hazel Sandstorm>
- Show me any associated indicators for the above actor.
- What are some of the domain indicators for this actor.
- Get me the reputations for hostname "service-logins.com"
- What are some of the web components for the ip address mentioned above?
- Get the most recent whois record for <manniewith98.com>
- Summarize threat intelligence articles related to the actor mentioned above.
- Are there any threat intelligence articles that reference the IOCs that were found?
- Show me the profiles of any threat actors referenced.
- Are any of these CVEs impacting my internet-facing assets? 
- Is my environment vulnerable to any of the CVEs from the list above? 
- Is my environment vulnerable to CVE [CVEID]?
- Check my cloud assets for vulnerabilities related to <CVE-XXXX>
- Create a report for this copilot session and include sections for: An Overview of MDEASM, The Summary of the Attack Surface for <Woodgrove Bank>, List of Expired Domains and whois info, The list of Common Names from Expired SSL Certificates, Describe the Vulnerabilities on the Host <test.example.com> with CVSS scores, Detailed Steps for Mitigating Vulnerabilities on <test.wexample.com>


## Entra
<a name="Entra"></a>
- Whoami
- What is the status of the user account for <Username>? Is it locked out?
- What login attempts exist for the user on December 31st? (Created KQL)
- What login attempts exist for the user in the last 14 days? (Created KQL) 
- What login attempts exist for the user <UPN> in the last 14 days? (Targeting a specific user)
- Is the user considered risky? If so, why? 
- Tell me more about <user UPN> in format-list.
- How many times login failed for this user in the last 30 days and tell me the reasons.
- Generate a report based on Entra plug-in: Is the user <UPN> considered risky? If yes, list the 
reasons. 
- Show me the most recent failed sign-in for my account in the last month.
-  Show me the sign-in logs of users who signed in from ,<Location>
- What authentication methods are enabled for my account?
- List the groups I am part of
- List the groups <Username> is part of 

[![alt text](../Images/backtotop.svg)](#sample-prompts-library)
## Intune
<a name="Intune"></a>
- Which devices are used by user <UPN>
- Tell me about this device.
- Identify Weak hosts. 
- Could you give me the total number of devices in Intune?
- Show me configuration policies for this device.
- What groups is this device a member of?
- Tell me about managed apps on this device.
- Tell me about devices for <Username> 
- Show me the devices for <username>
- Show me the difference in managed applications for the above devices.
- How are managed apps on this device different from Shobhit's device? (Shobhit is another 
user in this example)
- What groups is <Appname> assigned to?
- Show me the users <Notepad++ >assigned to
- Show me the difference in the hardware for the above device
- Give me the status of the <Devicename>. Is it managed, is it compliant with management 
policies?
- Tell me about the app policy that isn't compliant. Why would this device be failing this 
policy?
- Tell me about the app policy that isn't compliant. Why would this device not have the policy 
applied and why is it in a state of non-compliance?

[![alt text](../Images/backtotop.svg)](#sample-prompts-library)
## Defender & Sentinel
<a name="Defender_and_Sentinel"></a>
- Provide me a summary of Defender incident <Incident ID>
- Tell me more about Sentinel incident <Incident ID>
- Extract the entities associated with the incident.
- If a user is listed in the incident details, show which devices they have used recently and 
indicate whether they are compliant with policies.
- Are there any defender incidents involving <Username> on December 31st, 2023? List the 
title, severity, timestamp, Attack Techniques, and Categories for any incidents containing his 
account name or alias. Search account name containing <User full name> or <user first 
name>
- List the 10 most critical defender incidents.
- Show defender incidents detected over the last 14 days and summarize the trends
- - Show sentinel incidents detected over the last 14 days and summarize the trend
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
- List the alerts on Sentinel incident <Incident ID>
- Check Defender for vulnerabilities related to <CVE-XXXX>
- List all Sentinel workspaces.
- List the last 5 incidents from Sentinel workspace <your-workspace>
- Tell me more about <Silk Typhoon>, and include the IOCs and any TTPs associated with <Silk 
Typhoon>? 
- show me MITRE TTPs from M365D incidents in the last month.
- What is the MITRE TTP number for account manipulation?

[![alt text](../Images/backtotop.svg)](#sample-prompts-library)
## Threat Intelligence
<a name="Threat_Intelligence"></a>
- Summarize recent threat intelligence.
- What threat actors have been active lately?
- How should I harden my environment to prevent these attacks?
- Can you tell me about more specific threat intelligence related to the <financial services 
industry>? 
- Can you help me with creating a KQL to search for relevant public IOCs from <EvilProxy> 
Phishing Attacks in Microsoft Defender? I would like to be able to search from a list of 
domains, IP addresses, and file hashes and add searching from alert evidence as well?
- Can you explain line by line what this KQL above is doing?
- Can you create the same KQL but adapt it for Sentinel?
- Write a KQL query to identity Log4J in my M365Defender and list resources that are 
impacted with the Log4J vulnerability. 
- It was observed that <Manatee Tempest> was active in this event. Provide a summary of the 
actor and their intersection with ransomware. Note: Replace threat actor name
- Get me a profile of this threat actor <Manatee Tempest>
- Are there known TTPs for this threat actor?
- If there are TI articles related to this threat actor, provide a list and summary of them & 
include links in the last week.
- If there were TI articles found, what recommendations does the first article in the list have 
for protecting against this actor?
- Provide a summary of <Mustard Tempest> and a list of their brokered access 
methodologies.
- Summarize threat intelligence articles for <“T1585.001”>
- Show me 5 indicators per actor for the actors above
- Show threat intelligence info for <Aqua Blizzard>
- Show relevant TTPs.
- Show a relevant list of indicators.

[![alt text](../Images/backtotop.svg)](#sample-prompts-library)
## Vulnerabilities
<a name="Vulnerabilities"></a>
- Summarize the latest Vulnerabilities from the last week.
- Summarize <CVE-XXXX> vulnerability.
- What vulnerabilities have been exploited recently by threat actors?
- Which of these CVEs have known exploitations?
- Which technologies are impacted by each of these CVEs?
- Does [CveId] have known exploitations?
- Is my environment vulnerable to CVE [CVEID]? 

[![alt text](../Images/backtotop.svg)](#sample-prompts-library)
## Purview
<a name="Purview"></a>
- Show me the top 5 DLP alerts that I should prioritize today?
- Can you summarize purview alert <AlertID>? 
- Can you summarize the risk associated with user: <UPN> involved in this alert?
- What information does Purview have about the risk associated with this user?
- Which Purview Data Loss Prevention alerts should I prioritize today?
- Can you summarize the first purview alert?
- Tell me more about the user <UPN>
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

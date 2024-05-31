![Copilot for Security Overview](https://github.com/Azure/Copilot-For-Security/blob/main/Images/ic_fluent_copilot_64_64%402x.png)

## Plugin skillset

The following list provides an overview of each plugin skill and its description. In addition to directly invoking a skill using the prompt web UI, users can invoke a skill type typing "slash" followed by the skill name and apprpriate input (e.g. /FetchURL https://ifconfig.me).

**Disclaimer** - All information within this collection is for reference only and is not kept in parity with the production instance of Copilot for Security. You may source the latest information by launching Copilot for Security, opening the Edge Developer Tools (F12), locating the network tab, selecting the "Response" sub-tab, and locating the associated "skills" source file.

Updated - 30-May-2024

## AzureAiSearch-skills.json
**SearchAzureAiSearchIndex** - Search and retrieve text content from your Azure AI Search index. <br/>

## AzureFirewall-skills.json
**CrossReferenceIdpsSignature** - Look for a given IDPS signature across your tenant, subscription, or resource group. <br/>
**GetAuxiliaryIdpsData** - Expand on the description of an IDPS signature in the Azure Firewall logs. <br/>
**GetIdpsSignaturesForFirewall** - Retrieve the top IDPS signature hits for an Azure Firewall. <br/>
**GiveTargetedIdpsGuidance** - Generate recommendations to secure your environment using Azure Firewall's IDPS feature. <br/>

## CIRCL-skills.json
**Look up MD5 hash CIRCL** - Lookup information on CIRCL about a specific MD5 hash <br/>
**Look up SHA1 hash CIRCL** - Lookup information on CIRCL about a specific SHA-1 hash <br/>
**Look up SHA256 hash CIRCL** - Lookup information on CIRCL about a specific SHA-256 hash <br/>

## EASM-skills.json
**GetAssetsAffectedByCVE** - Identify the assets a CVE impacts, their details, and when they were observed. <br/>
**GetAssetsAffectedByCVSS** - Identify the assets a CVSS score impacts, their details, and when they were observed. <br/>
**GetAttackSurfaceInsights** - Learn about high, medium, or low priority insights impacting attack surfaces. <br/>
**GetAttackSurfaceSummary** - Discover what assets are in an attack surface. <br/>
**GetEasmGeneralInfo** - Get Microsoft Defender EASM general information. <br/>
**GetExpiredCertificates** - Learn about expired SSL certificates, their details, and associated assets for attack surfaces. <br/>
**GetExpiredDomains** - Learn about expired domains, their details, and assets for attack surfaces. <br/>
**GetSHA1Certificates** - Learn about SSL certificates using SHA-1, their details, and associated assets. <br/>

## Entra-skills.json
**GetEntraAuditLogs** - View changes to applications, groups, users, and licenses in Microsoft Entra ID. <br/>
**GetEntraDiagnosticsLogs** - View settings for diagnostic log collection and streaming of activity logs in Microsoft Entra ID.
**GetEntraGroupDetails** - View Microsoft Entra ID group ownership and membership details. <br/>
**GetEntraRiskyUserSummary** - View a detailed summary of a Microsoft Entra ID users risk. <br/>
**GetEntraRiskyUsers** - View details of Microsoft Entra ID users with high, medium, or low risk of compromise. <br/>
**GetEntraSignInLogs** - View Microsoft Entra ID sign-in log details including policy evaluation results, and details on the location, device, and target resource. <br/>
**GetEntraUserDetails** - View contact information, authentication method registration, and account details for users in Microsoft Entra ID. <br/>

## FileUploads-skills.json
**AskUploadedFiles** - Answers questions using user's uploaded files. <br/>

## Fusion-skills.json
**AssessVulnerabilityImpact** - Gets a list of assets that have been impacted by a specific vulnerability CVE. <br/>
**EnrichIncidentWithDeviceContext** - Retrieve detailed device information from Intune and Microsoft Defender for Endpoint. Device information may include device user, manufacturer and model, operating system information, compliance status, and usage-related timestamps. <br/>
**EnrichIncidentWithFileContext** - Enrich incident investigation with file context from Microsoft Defender for Endpoint.  Enriched data may include file hashes, device information, account information, file locations and associated timestamps. <br/>
**EnrichIncidentWithThreatIntelligence** - Enrich a set of IPv4 addresses or a set of hostnames with threat intelligence (TI) context.  The TI context may include reputation information, such as whether a host or IP is malicious or not, ownership (whois) information, and routing information. <br/>
**FindUserIpOrHostnameAccessRecords** - Gets a list of users who have accessed specific hostnames and/or IP addresses. <br/>
**FindUserScriptDownloads** - Gets a list of users who have downloaded a specific script. <br/>
**GetIncident** - Gets a summary of an incident given its GUID, number or URL. <br/>
**GetIncidentEntities** - Gets entities of an incident given its GUID, ID number or URL. <br/>

## Generic-skills.json
**ConvertUnixTimestamp** - Convert a Unix timestamp to a human readable date and time. <br/>
**ScriptAnalyzer** - Analyze and interpret a command or script to natural language. <br/>
**EntityExtraction** - Extract entities (e.g. accounts, URLs, hashes) from security data (e.g. logs, alerts and incidents). <br/>
**GenerateSecurityExamples** - Generate security-specific examples, such as event logs, reports, and configuration instructions. <br/>
**ExtractIndicatorsOfCompromise** - Extract indicators of compromise from plain text. <br/>
**AnalyzeSecurityData** - Analyze, summarize, and explain security data such as event logs, and answer security questions. <br/>
**SummarizeData** - Get a summary of the given data. <br/>

## Intune-skills.json
**DescribeIntunePolicy** - Summarize and assess the impact of a Microsoft Intune policy. <br/>
**ErrorCodeAnalyzer** - Get detailed information about a device configuration error code. <br/>
**GetAppAndPolicyGroupTargeting** - Get a summary of the number of users and devices that an app or policy is assigned to. <br/>
**GetAppOrPolicyDeviceGroupTargeting** - Get info about why a managed device has a policy or app by checking its group memberships. <br/>
**GetIntuneDeviceDiff** - Get a summary of similarities and differences in the configuration of two managed devices. <br/>
**GetIntuneDeviceDiscoveredOrManagedApplication** - Get a list of Intune managed apps, or softwares, appliations installed on a managed device, or get info about an app. <br/>
**GetIntuneDeviceGroupMemberships** - Summarize the group memberships of a managed device. <br/>
**GetIntuneDevices** - Get summary of managed devices with key information for a user. <br/>
**GetPoliciesPerDevice** - Get info on policies assigned to a managed device, including device config, app config, and compliance. <br/>
**GetPolicySetting** - Get detailed info about a device configuration policy setting, including best practices. <br/>
**GetPolicySettingUsage** - Get info about whether any existing device configuration policies contain a specified setting. <br/>

## KnowledgeBase-skills.json
**AskMsDocs** - Ask questions or search for information about Microsoft security products. <br/>

## M365-skills.json
**GetDefenderDeviceSummary** - Get device insights, security issues, and other important information. <br/>
**GetDefenderIncidentReport** - Get a report about an attack and your response, including who took action and when. <br/>
**GetDefenderIncidents** - List incidents and related alerts. <br/>
**GetFileAnalysis** - Inspect a file using available information, including API calls, certificates, and strings. <br/>
**GetIncidentGuidedResponse** - Get step-by-step response recommendations for an incident. <br/>

## NL2KQLDefender-skills.json 
**NL2KQLDefender** - Craft queries to find threats and weaknesses using Defender XDR and connected Microsoft Sentinel data. <br/>

## NL2KQLSentinel-skills.json
**NL2KQLSentinel** - Find threats and weaknesses across your environment with Microsoft Sentinel data. <br/>

## Purview-skills.json
**GetDataRiskSummary** - Summarizes risk of the data associated with the security incident or a Data Loss Prevention alert. <br/>
**GetUserRiskSummary** - Provides an overview of user risk using Purview Insider Risk Management. <br/>
**SummarizePurviewAlert** - Summarizes Microsoft Purview alerts from Purview Data Loss Prevention (DLP) and Insider Risk Management (IRM). <br/>
**TriagePrivaRisks** - Retrieves Priva Risks. <br/>
**TriagePurviewAlerts** - Retrieves recent Purview Data Loss Prevention (DLP) alerts based on severity and status. <br/>
**ZoomIntoPurviewDataRisk** - Identifies attributes like labels or activities for the data in the context of Microsoft Purview. <br/>
**ZoomIntoPurviewUserRisk** - Provides information about the user's activities from Purview Insider Risk Management. <br/>

## Sentinel-skills.json
**GetSentinelIncidents** - Get a list of incidents from a Microsoft Sentinel workspace. <br/>
**ListSentinelWorkspaces** - Get a list of your Microsoft Sentinel workspaces. <br/>

## ThreatIntelligence.DTI-skills.json 
**FindThreatIntelligence** - Look up threat intelligence information like intelligence profiles, articles, and threat analytics. <br/>
**GetCveMitigation** - Get the mitigation or remediation steps of a given CVE. <br/>
**GetCvesByIdsDti** - Get the details and remediation for a list of CVE IDs. <br/>
**GetCvesByKeywordSearchDti** - Get a list of terse info for CVEs related to a keyword, or if no keyword is provided, a list of recent CVEs. <br/>
**GetDnsResolutionsByHostname** - Get the DNS resolutions of a given hostname. <br/>
**GetDnsResolutionsByIpAddress** - Get the DNS resolutions of a given IP address. <br/>
**GetIntelProfileIndicators** - Get the indicators of compromise (IOCs) related to a given intelligence profile. <br/>
**GetReputationsForIndicators** - Get the reputation details for a list of indicators of compromise. <br/>

## WAF-skills.json 
**GetTopRulesTriggered** - Get top Azure Web Application Firewall rules triggered by block action in the specified period. <br/>
**GetTopBlocksByIP** - Get top malicious IPs blocked by Azure Web Application Firewall in the specified period. <br/>
**GetSQLiBlocksByWAF** - Get details about SQL injection attacks blocked by Azure Web Application Firewall. <br/>
**GetXSSBlocksByWAF** - Get details about cross-site scripting attacks blocked by Azure Web Application Firewall. <br/>

## Web-skills.json
**FetchUrl** - Downloads the content from an anonymously accessible URL. If the content is HTML then it is converted to Markdown or plain text format. <br/>


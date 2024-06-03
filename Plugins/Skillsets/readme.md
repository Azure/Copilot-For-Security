![Copilot for Security Overview](https://github.com/Azure/Copilot-For-Security/blob/main/Images/ic_fluent_copilot_64_64%402x.png)

# Plugin skillsets

The following list provides an overview of each plugin skill and its description. In addition to directly invoking a skill using the prompt bar in web UI, users can invoke a skill type typing "slash" followed by the skill name and apprpriate input (e.g. /FetchURL https://ifconfig.me).

**Disclaimer** - All information within this collection is for reference only and is not kept in parity with the production instance of Copilot for Security. You may source the latest information by launching Copilot for Security, opening the Edge Developer Tools (F12), locating the network tab, selecting the "Response" sub-tab, and locating the associated "skills" source file.

Updated - 31-May-2024

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

## CrowdSecTI-skills.json
**Look up IP address smoke dataset** - Get CTI informations about the given IP address using Crowdsec TI's smoke dataset.

## CyberArk-skills.json
**AccountsGetAccounts** - This method returns a list of privileged accounts. <br/>
**AccountsGetAccount** - This method returns detailed information about a privileged account identified by its id.

## Cyware_Respond-skills.json
**Get a List of Actions from Cyware Respond** - Retrieve the details of all the action from the Cyware Respond application. <br/>
**Get Details of a Cyware Respond Action** - Retrieve the details of an action. <br/>
**List Applications On Cyware Respond** - Retrieve the details of a list of applications in Cyware Respond. <br/>
**Get Application Details On Cyware Respond** - Retrieve the details of a specific application in Cyware Respond. <br/>
**List Software On Cyware Respond** - Retrieve the details of a list of software assets in the Cyware Respond application. <br/>
**Get Software Details On Cyware Respond** - Retrieve the details of a software in the Cyware Respond application. <br/>
**Get a List of Campaigns On Cyware Respond** - Retrieve a list of all the campaigns with details from the Cyware Respond application. <br/>
**Get Details of a Campaign On Cyware Respond** - Retrieve the details of a campaign. <br/>
**Get Comments from a Cyware Respond Action** - Retrieve a list of comments from an action. <br/>
**Get List of Devices from Cyware Respond** - Retrieve the details of all the devices in Cyware Respond Application. <br/>
**Get Details of a Device on Cyware Respond** - Retrieve the details of a device in the Cyware Respond application. <br/>
**Get List of Incidents from Cyware Respond** - Retrieve a list of all the incidents with details from the Cyware Respond application. <br/>
**Get Details of a Cyware Respond Incident** - Retrieve the details of an incident. <br/>
**List Threat Intelligence From Cyware Respond** - Retrieve a list of all the threat intels with details from the Cyware Respond application. <br/>
**Get Threat Intel Details From Cyware Respond** - Retrieve the details of a Threat Intel from the Cyware Respond application. <br/>
**Retrieve a list of Malwares from Cyware Respond** - Retrieve a list of malware from your Cyware Respond application. <br/>
**Get Details of a Malware On Cyware Respond** - Retrieve the details of a specific malware from the Cyware Respond application. <br/>
**Get List of Vulnerabilities from Cyware Respond** - Retrieve the details of all the vulnerabilities in Cyware Respond Application. <br/>
**Get Details of a Vulnerability from Cyware Respond** - Retrieve the details of a vulnerability. <br/>

## Darktrace-skills.json
**GetModelbreaches** - Returns information about Darktrace modelbreaches sometimes referred to as "model breaches", models or alerts. <br/>
**GetModelbreachCommentsBy{pbid}** - Returns comments made on specific Darktrace modelbreaches sometimes referred to as "model breaches", models or alerts. <br/>
**GetDevices** - The devices endpoint is most useful when you know the darktrace device identifier or "did". It retrieves information known about that device. <br/>
**SearchDevices** - The devicesearch endpoint is most useful when you want to search for multiple devices and do not know the darktrace device identifier "did". <br/>
**GetRespondActions** - The 'antigena' endpoint returns information about current and past Darktrace RESPOND/Network (formerly Antigena Network) actions. <br/>
**GetIncidentGroups** - An AI Analyst group serves as a container for an incident. Use this endpoint to obtain top-level information about detected incidents and filter them based on the available parameters. <br/>
**GetIncidentEvents** - An AI Analyst event contains information about a specific part of an investigation. Use this endpoint to obtain more in depth information about the events involved in an incident and filter them based on the available parameters. <br/>
**GetCommentsForIncident** - Returns current comments on an AI Analyst event. <br/>
**GetStats** - Returns metadata on the investigations AI Analyst has performed. <br/>
**GetDetails** - The details endpoints is useful whenever you need information about specific connections or events including: Get information for connections to an external hostname, network connections, tcp, udp, blocked by respond (antigena), between devices notices, events associated to the device (for saas iaas paas etc all low level information is notices as there are no connections). <br/>
**GetEndpointDetails** - Use this endpoint to gather detailed information about external domains, hostnames, or endpoints that Darktrace has encountered. <br/>
**Summarystatistics** - Returns simple statistics on device counts, processed bandwidth and the number of active Darktrace RESPOND actions. <br/>
**EmailActionSummary** - For the Darktrace Email platform returns a summary of actions taken, broken down by action category. <br/>
**EmailDashStats** - For the Darktrace Email platform returns time-series dashboard statistics for a given filter selection. Filter selection is limited to Direction (inbound or outbound) and short Tag IDs. <br/>
**EmailDataLoss** - For the Darktrace Email platform returns Data Loss statistics for users ordered by total DLP breaches. <br/>
**EmailUserAnomaly** - For the Darktrace Email platform returns User Anomaly statistics for users ordered by most anomalous. <br/>
**GetEmailBy{uuid}** - For the Darktrace Email platform return the summary of the specified email. Short hand tags are difficult to understand, you can use the following friendly name mapping to improve readability: - out of character (value: "ah") - credential harvesting (value: "ch") - extortion (value: "ex") - phishing attachment (value: "pa") - spam (value: "sp") - phishing link (value: "pl") - solicitation (value: "so") - spoofing indicators (value: "ss") - vip impersonation (value: "vi") - malware or ransomware (value: "mr"). <br/>
**DownloadEmailBy{uuid}** - For the Darktrace Email platform return the raw body of this email. <br/>
**EmailGetTags** - For the Darktrace Email platform return information about all tags. <br/>
**EmailGetActions** - For the Darktrace Email platform return information about Darktrace Email actions. <br/>
**EmailGetFilters** - For the Darktrace Email platform return filters available to use in the 'emails/search' endpoint. <br/>

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
**GetEntraSignInLogs** - View Microsoft Entra ID sign-in log details including policy evaluation results, and details on the location, device, and target resource.<br/>
**GetEntraUserDetails** - View contact information, authentication method registration, and account details for users in Microsoft Entra ID. <br/>

## FileUploads-skills.json
**AskUploadedFiles** - Answers questions using user's uploaded files. <br/>

## Fusion-skills.json
**AssessVulnerabilityImpact** - Gets a list of assets that have been impacted by a specific vulnerability CVE. <br/>
**EnrichIncidentWithDeviceContext** - Retrieve detailed device information from Intune and Microsoft Defender for Endpoint. Device information may include device user, manufacturer and model, operating system information, compliance status, and usage-related timestamps. <br/>
**EnrichIncidentWithFileContext** - Enrich incident investigation with file context from Microsoft Defender for Endpoint. Enriched data may include file hashes, device information, account information, file locations and associated timestamps. <br/>
**EnrichIncidentWithThreatIntelligence** - Enrich a set of IPv4 addresses or a set of hostnames with threat intelligence (TI) context. The TI context may include reputation information, such as whether a host or IP is malicious or not, ownership (whois) information, and routing information. <br/>
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

## GreyNoiseCommunity-skills.json
**Look up IP address noise** - This endpoint allows you to check an IP address against the GreyNoise database. <br/>

## GreyNoiseEnterprise-skills.json
**Look up IP context** - This endpoint allows you to check an IP context against the GreyNoise database. <br/>
**Look up IP quick** - This endpoint provides a quick way to check if an IP is "noise" or not. <br/>
**Look up multiple IPs** - This endpoint allows you to quickly lookup data on IPs in bulk. <br/>
**Look up IP riot** - This endpoint provides information about commonly whitelisted IPs. <br/>
**Look up GNQL** - This endpoint allows you to use the GreyNoise Query Language (GNQL) to make complex queries against the GreyNoise dataset. <br/>
**Look up CVE stats** - This endpoint allows you to use the GreyNoise Query Language (GNQL) stats endpoint to query for CVE stats information. <br/>

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

## Jamf-skills.json
**Raw Inventory Record** - Get entire macOS inventory record from Jamf Pro by providing its serial number. <br/>
**General and Location Info** - Get General information (host name, username, last checkin, last inventory update ip address, jamf version, and more) from the inventory record by serial number. <br/>
**Hardware and Security Info** - Get macOS Hardware info and Security settings (model ID, os version, Filevault status, SIP status, Gatekeeper status, XProtect version, firewall status and more) from the inventory record in Jamf Pro by providing serial number. <br/>
**Certificates Info** - Get Certificates information for a macOS device from the Jamf Pro inventory record by providing the macOS serial number. <br/>
**Software Info** - Get macOS software information (installed applications, available updates, fonts, plugins and more) for an endpoint from the Jamf Pro inventory record by providing the mac serial number. <br/>
**Extension Attributes Info** - Get custom (specific to the cusotmer) attribute information for a macOS endpoint from the Jamf inventory record by providing the mac serial number. <br/>
**Groups Info** - Get group membership (Jamf Pro smart and static groups) information for a macOS endpoint from the jamf inventory record by providing the mac serial number. <br/>
**Configuration Profiles Info** - Get Configuration Profiles (profile ids) information from the inventory record by serial number. <br/>

## KnowledgeBase-skills.json
**AskMsDocs** - Ask questions or search for information about Microsoft security products. <br/>

## M365-skills.json
**GetDefenderDeviceSummary** - Get device insights, security issues, and other important information. <br/>
**GetDefenderIncidentReport** - Get a report about an attack and your response, including who took action and when. <br/>
**GetDefenderIncidents** - List incidents and related alerts. <br/>
**GetFileAnalysis** - Inspect a file using available information, including API calls, certificates, and strings. <br/>
**GetIncidentGuidedResponse** - Get step-by-step response recommendations for an incident. <br/>

## Netskope_Reporting_API_endpoints-skills.json
**Get_data_alert** - Get a list of alerts generated by Netskope. You can filter by timeperiod, alert type, acknowledged, or advanced query parameters. This endpoint allows you to check all the Netskope Alerts in your tenant. <br/>
**Get_data_application** - Get a list of application events generated by Netskope. You can filter by timeperiod or advanced query parameters. <br/>
**Get_data_audit** - Get a list of audit events generated by Netskope. You can filter by timeperiod or advanced query parameters. <br/>
**Get_data_infrastructure** - Get a list of infrastructure events generated by Netskope. You can filter by timeperiod or advanced query parameters. <br/>
**Get_data_network** - Get a list of network events generated by Netskope. You can filter by timeperiod or advanced query parameters. <br/>
**Get_data_page** - Get a list of page events generated by Netskope. You can filter by timeperiod or advanced query parameters. <br/>

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

## RedCanary-skills.json
**retrieveRedCanaryEndpointbyHostname** - Fetch activities by endpoint hostname in the Red Canary platform. <br/>
**retrieveRedCanaryIPUsage** - Fetch activities by IP address in the Red Canary platform. <br/>
**retrieveRedCanaryEventsbyThreatID** - Fetch the event details from a specific threat detection in Red Canary. <br/>
**retrieveRedCanaryThreatIOCsbyThreatID** - Fetch a list of marked indicators of compromise from a specific threat detection in Red Canary. <br/>
**retrieveRedCanaryRelatedDetectionsbyThreatID** - Fetch related detection details from a specific threat detection in Red Canary. <br/>
**retrieveRedCanaryDetectorsbyThreatID** - Fetch detector details from a specific threat detection in Red Canary. <br/>
**retrieveRedCanaryTimelinebyThreatID** - Fetch timeline details from a specific threat detection in Red Canary. <br/>
**retrieveRedCanaryEndpointbySensorID** - Fetch endpoint details by Sensor ID in the Red Canary platform. <br/>
**retrieveListofRedCanaryPortalUsers** - Fetch a list of users who can login to the Red Canary platform. <br/>
**retrieveListofRedCanaryEvents** - Fetch a list of Events that were investigated by Red Canary. <br/>
**retrieveListofRedCanaryAuditLogs** - Fetch a list of audit log activities from the Red Canary platform. <br/>
**retrieveListofRedCanaryEndpointUsers** - Fetch a list of users monitored in Red Canary. <br/>
**retrieveRedCanaryEndpointUserbyID** - Fetch the details of a user by Red Canary user ID. <br/>
**retrieveListofRedCanarySystemActivities** - Fetch investigation activities for a user ID in the Red Canary platform. <br/>
**retrieveListofRedCanaryThreats** - Fetch a list of Red Canary published threats sorted by confirmation date and time. <br/>
**retrieveListofRedCanaryThreatIOCs** - Fetch a list of marked indicators of compromise (IOCs) from Red Canary. <br/>
**retrieveListofRedCanaryExternalAlerts** - Fetch a list of 3rd party alerts reviewed by Red Canary. <br/>
**retrieveRedCanaryExternalAlertbyId** - Fetch a specific 3rd party alert by ID analyzed by Red Canary. <br/>
**retrieveRedCanaryThreatbyId** - Fetch a specific threat by ID in Red Canary. <br/>
**retrieveListofRedCanaryEndpoints** - Fetch a list of Endpoints monitored by Red Canary. <br/>
**retrieveRedCanaryEndpointbyID** - Fetch the details of an endpoint by Endpoint ID from the Red Canary platform. <br/>
**retrieveListofRedCanaryEndpointUsers** - Fetch a list of users associated with an endpoint by Endpoint ID in the Red Canary platform. <br/>
**retrieveListofRedCanarySystemActivities** - Fetch detector and intelligence updates from Red Canary. <br/>
**retrieveListofRedCanaryPlatformInsights** - Fetch security investigation statistics from Red Canary. <br/>

## ReversingLabs_Spectra_Intelligence-skills.json
**GetFileHashReputation** - TCA-0101 - Get the reputation of the supplied file hash. <br/>
**GetFileAnalysisResults** - TCA-0104 - Get the detailed analysis results for the requested hash. <br/>
**GetDynamicAnalysisReport** - TCA-0106 - Get the dynamic analysis results for the requested hash. <br/>

## Sentinel-skills.json
**GetSentinelIncidents** - Get a list of incidents from a Microsoft Sentinel workspace. <br/>
**ListSentinelWorkspaces** - Get a list of your Microsoft Sentinel workspaces. <br/>

## ServiceNow-skills.json
**AnalyzeServiceNowIncidents** - Analyze or summarize one or many ServiceNow incidents based on an optional incident number, optional keyword, incident state, incident priority, date range, and the user's query or desired analysis. <br/>
**AppendCommentToServiceNowIncident** - Appends comment to a specific ServiceNow Incident <br/>
**GetServiceNowIncident** - Get detailed information about a ServiceNow Incident such as short description, priority, category, state, configuration item, business service, comments, and worknotes. Must be used when user asks for both comments AND worknotes for an incident. <br>
**GetServiceNowIncidentComments** - Gets detailed comments for a ServiceNow incident. <br/>
**GetServiceNowIncidentWorkNotes** - Gets detailed work notes for a ServiceNow incident. <br/>
**SearchServiceNowIncidents** - Searches for ServiceNow incidents based on optional keyword, incident state, and incident priority inputs.

## SGNL-skills.json
**Analyze SGNL Logs** - Analyze SGNL Logs <br/>

## Shodan-skills.json
**Check Shodan Host IP** - Returns all services that have been found on the given host IP. What does Shodan say about IP address 8.8.8.8? <br/>
**Get Shodan Host Count** - This method behaves identical to "/shodan/host/search" with the only difference that this method does not return any host results, it only returns the total number of results that matched the query and any facet information that was requested. As a result this method does not consume query credits. <br/>
**Get Shodan Host Search** - Search Shodan using the same query syntax as the website and use facets to get summary information for different properties. Requirements - This method may use API query credits depending on usage. If any of the following criteria are met, your account will be deducted 1 query credit:. The search query contains a filter. 2. Accessing results past the 1st page using the "page". For every 100 results past the 1st page 1 query credit is deducted. <br/>
**Get Shodan Host Search Facets** - This method returns a list of facets that can be used to get a breakdown of the top values for a property. <br/>
**Get Shodan Host Search Filters** - This method returns a list of search filters that can be used in the search query. <br/>
**Get Shodan Host Search Tokens** - This method lets you determine which filters are being used by the query string and what parameters were provided to the filters. <br/>
**Get Shodan Ports** - This method returns a list of port numbers that the crawlers are looking for. <br/>
**Get Shodan Protocols** - This method returns an object containing all the protocols that can be used when launching an Internet scan. <br/>
**Get Shodan Scans** - Returns a listing of all the on-demand scans that are currently active on the account. <br/>
**Get Shodan Scan ID** - Check the progress of a previously submitted scan request. Possible values for the status are: "SUBMITTING", "QUEUE", "PROCESSING", and "DONE". <br/>
**Get Shodan Alert ID Info** - Returns the information about a specific network alert. <br/>
**Get Shodan Alerts Info** - Returns a listing of all the network alerts that are currently active on the account. <br/>
**Get Shodan Alert Triggers** - Returns a list of all the triggers that can be enabled on network alerts. <br/>

## Splunk-skills.json
**GetSplunkSearchJobResults** - Get Splunk search job results. <br/>
**GetSplunkSearchJobs** - List all Splunk search jobs. <br/>
**CreateSplunkSearchJob** - Create a Splunk search job. <br/>
**GetSplunkSavedSearches** - List all Splunk saved searches. <br/>
**CreateSplunkSavedSearch** - Create a saved search. <br/>
**GetSplunkSavedSearch** - Access the named saved search. <br/>
**AcknowledgeSplunkSavedSearch** - Acknowledge the specific saved search alert suppression and resume alerting. <br/>
**DispatchSplunkSavedSearch** - Dispatch the specific saved search (create / start a search job using the saved search) <br/>
**GetSplunkSavedSearchHistory** - List available search jobs created from a specific saved search <br/>
**GetSplunkSavedSearchSuppressionState** - Get the saved search alert suppression state <br/>
**GetSplunkFiredAlerts** - Access a fired alerts description. <br/>
**GetSplunkFiredAlert** - Access a specific fired alert. <br/>
**GetSplunkAlertActions** - Access a list of alert actions. <br/>
**SearchSplunkEvents** - Searches for Splunk events based on index and optional inputs such as earliest, latest, fields, and sort. <br/>

## Tanium-skills.json
**List Child Processes for Process File** - List Child Processes for Process File. <br/>
**Count Endpoints Having Package Version** - Count Endpoints Having Package Version. <br/>
**Get Vulnerability Test Results** - Get Vulnerability Test Results. <br/>
**List Endpoints Having Package** - List Endpoints Having Package. <br/>
**List Endpoints with Process Command** - List Endpoints with Process Command. <br/>
**List Endpoints with Process Name** - List Endpoints with Process Name. <br/>
**List Endpoints with Process MD5 Hash** - List Endpoints with Process MD5 Hash. <br/>
**List Endpoints Vulnerable To CVE** - List Endpoints Vulnerable To CVE. <br/>
**List Process SHA-256 Hashes and Versions** - List Process SHA-256 Hashes and Versions. <br/>
**List Processes Connected To IPv4 Address** - List Processes Connected To IPv4 Address. <br/>
**List Processes Ran As User** - List Processes Ran As User. <br/>
**Get Real-time Data from Endpoints** - Get Real-time Data from Endpoints. <br/>
**List File Operations** - List File Operations. <br/>
**List Service Module Details** - List Service Module Details. <br/>
**List Service Process Details** - List Service Process Details. <br/>
**Get Logged In User** - Get Logged In User. <br/>
**List WMI Event Consumers** - List WMI Event Consumers. <br/>
**View Endpoint Processes** - View Endpoint Processes. <br/>
**List File Details** - List File Details. <br/>

## ThreatIntelligence.DTI-skills.json 
**FindThreatIntelligence** - Look up threat intelligence information like intelligence profiles, articles, and threat analytics. <br/>
**GetCveMitigation** - Get the mitigation or remediation steps of a given CVE. <br/>
**GetCvesByIdsDti** - Get the details and remediation for a list of CVE IDs. <br/>
**GetCvesByKeywordSearchDti** - Get a list of terse info for CVEs related to a keyword, or if no keyword is provided, a list of recent CVEs. <br/>
**GetDnsResolutionsByHostname** - Get the DNS resolutions of a given hostname. <br/>
**GetDnsResolutionsByIpAddress** - Get the DNS resolutions of a given IP address. <br/>
**GetIntelProfileIndicators** - Get the indicators of compromise (IOCs) related to a given intelligence profile. <br/>
**GetReputationsForIndicators** - Get the reputation details for a list of indicators of compromise. <br/>

## UrlScan-skills.json
**Scan Url** - Scans a URL using the Url Scan API. <br/>

## Valence_Security-skills.json
**ValenceSecurityUserPlatforms** - Get platforms covered by Valence Security for email. <br/>
**ValenceSecurityUserAlerts** - Get alerts of high privileged actions from Valence Security by user email. <br/>

## WAF-skills.json 
**GetTopRulesTriggered** - Get top Azure Web Application Firewall rules triggered by block action in the specified period. <br/>
**GetTopBlocksByIP** - Get top malicious IPs blocked by Azure Web Application Firewall in the specified period. <br/>
**GetSQLiBlocksByWAF** - Get details about SQL injection attacks blocked by Azure Web Application Firewall. <br/>
**GetXSSBlocksByWAF** - Get details about cross-site scripting attacks blocked by Azure Web Application Firewall. <br/>

## Web-skills.json
**FetchUrl** - Downloads the content from an anonymously accessible URL. If the content is HTML then it is converted to Markdown or plain text format. <br/>


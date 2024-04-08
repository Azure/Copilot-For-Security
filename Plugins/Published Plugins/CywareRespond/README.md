# <span class="c12">Cyware Respond (CFTR) Integration with Microsoft Security Copilot</span>

## <span class="c3">Introduction</span>

<span class="c2">Cyware Fusion and Threat Response (Cyware Respond) is a threat response automation platform that combines cyber fusion, advanced orchestration, and automation. It enables security analysts to tackle various threats, including malware, vulnerabilities, incidents, campaigns, and threat actors. Through integrated threat databases, it offers capabilities to manage and respond to diverse security threats.</span>

## <span class="c3">Setup Instructions</span>

<span class="c2"></span>

1.  <span class="c2">Installation</span>

*   <span class="c2">Locate the plugin marketplace within Microsoft Security Copilot.</span>
*   <span class="c2">Search for "Cyware Respond" and install the plugin.</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 541.86px; height: 202.33px;">![](images/image1.png)</span>

2. <span class="c2">Cyware Respond Instance Setup</span>

*   <span class="c2">Log into your Cyware Respond instance.</span>
*   <span class="c2">Access the Admin Panel of Cyware Respond.</span>
*   <span class="c2">Navigate to Open APIs and create a new OpenAPI credential set.</span>
*   <span class="c2">Securely copy the OpenAPI token generated.</span>

<span class="c2"></span>

3. <span class="c2">Copilot Plugin Configuration</span>

*   <span class="c2">Access the configuration settings for the Cyware Respond (CFTR) plugin in Microsoft Security Copilot.</span>
*   <span class="c2">Enter the following:</span>

*   <span class="c2">Cyware Respond Instance URL: (e.g., [invalid URL removed])</span>
*   <span class="c2">API Token: (Paste the copied token)</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 504.07px; height: 652.10px;">![](images/image2.png)</span>

4. <span class="c2">Save and Test</span>

*   <span class="c2">Click "Save" to apply your configuration.</span>

5. <span>Once saved, you can ensure the plugin is active by running an ISV invocation by using the following</span> <span class="c8">/Cyware Respond</span><span class="c2"> and executing any simple action corresponding with organisational usage guidelines to ensure correct enablement</span>

<span class="c2"></span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 470.50px; height: 636.38px;">![](images/image3.png)</span>

## <span class="c3">Usage Examples</span>

### <span class="c6">Incident Management</span>

<span class="c1">Querying Incidents</span>

*   <span class="c0">"Search for incidents related to 'ransomware' in Cyware Respond."</span>
*   <span class="c0">"Find incidents mentioning 'data breach' in Cyware Respond."</span>

<span class="c1">Retrieving Incident Details</span>

*   <span class="c0">"Get details for the above incident from Cyware Respond."</span>
*   <span class="c0">"Show more information about the incident in Cyware Respond with UUID <uuid>."</span>

### <span class="c6">Action Management</span>

<span class="c1">Querying Actions</span>

*   <span class="c0">"Look up actions tagged with 'isolate' from this week in Cyware Respond."</span>
*   <span class="c0">"Find all 'network scan' actions performed yesterday in Cyware Respond."</span>

<span class="c1">Action Details</span>

*   <span class="c0">"Retrieve details of the last action we discussed from Cyware Respond."</span>
*   <span class="c0">"Can you provide more info on the previously mentioned action in Cyware Respond?"</span>

### <span class="c6">Application Management</span>

<span class="c1">Querying Applications</span>

*   <span class="c0">"Search for applications with 'firewall' in their name in Cyware Respond."</span>
*   <span class="c0">"Find security tools updated recently in Cyware Respond."</span>

<span class="c1">Application Details</span>

*   <span class="c0">"Get details for the above application from Cyware Respond."</span>
*   <span class="c0">"Show configuration details for the previously discussed security application in Cyware Respond."</span>

### <span class="c6">Software Asset Management</span>

<span class="c1">Querying Software Assets</span>

*   <span class="c0">"List critical software assets in Cyware Respond."</span>
*   <span class="c0">"Search for software needing updates in Cyware Respond."</span>

<span class="c1">Software Details</span>

*   <span class="c0">"Provide details for the last mentioned software asset in Cyware Respond."</span>
*   <span class="c0">"Can you fetch the version info of the software we talked about earlier in Cyware Respond?"</span>

### <span class="c6">Campaign Management</span>

<span class="c1">Querying Campaigns</span>

*   <span class="c0">"Find all active campaigns related to 'phishing' in Cyware Respond."</span>
*   <span class="c0">"Search for recent campaigns targeting remote employees in Cyware Respond."</span>

<span class="c1">Campaign Details</span>

*   <span class="c0">"Get campaign details for the previously mentioned campaign in Cyware Respond."</span>
*   <span class="c0">"Show more details about that cyber threat campaign from Cyware Respond."</span>

### <span class="c6">Threat Intelligence Management</span>

<span class="c1">Querying Threat Intelligence</span>

*   <span class="c0">"Search for threat intel on 'DDoS attacks' in Cyware Respond."</span>
*   <span class="c0">"Retrieve updates on 'APT groups' from this week in Cyware Respond."</span>

<span class="c1">Threat Intel Details</span>

*   <span class="c0">"Show details of the last threat intel we discussed in Cyware Respond."</span>
*   <span class="c0">"Can you provide more info on the threat actor mentioned earlier in Cyware Respond?"</span>

### <span class="c6">Malware Management</span>

<span class="c1">Querying Malware</span>

*   <span class="c0">"Find all malware detections from the past week in Cyware Respond."</span>
*   <span class="c0">"Search for 'spyware' detections in the marketing department in Cyware Respond."</span>

<span class="c1">Malware Details</span>

*   <span class="c0">"Give me the details of the previously mentioned malware in Cyware Respond."</span>
*   <span class="c0">"I need more information on that 'ransomware' we identified in Cyware Respond."</span>

### <span class="c6">Vulnerability Management</span>

<span class="c1">Querying Vulnerabilities</span>

*   <span class="c0">"Search for high-severity vulnerabilities in Cyware Respond."</span>
*   <span class="c0">"List all vulnerabilities discovered in the network infrastructure in Cyware Respond."</span>

<span class="c1">Vulnerability Details</span>

*   <span class="c0">"Get details of the vulnerability we discussed last time in Cyware Respond."</span>
*   <span class="c0">"Show mitigation steps for the above-mentioned vulnerability in Cyware Respond.</span>

<span class="c0"></span>
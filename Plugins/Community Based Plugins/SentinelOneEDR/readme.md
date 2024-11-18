# SentinelOne EDR Custom Plugin
Welcome to the SentinelOne custom plugin! Here, you'll unlock powerful functionalities tailored to enhance your SenitnelOne experience:
### Instructions
#### Upload the Custom Plugin

1. Obtain the file [SentinelOne_Manifest.yaml](https://github.com/Azure/Copilot-For-Security/blob/main/Plugins/Community%20Based%20Plugins/SentinelOneEDR/SentinelOne_Manifest.yaml) from this directory.
2. Upload the custom plugin
3. Add the SentinelOne Server instance Url, and API Key

<p align="center">
<img src="./images/upload_config.png?raw=true">
</p>



## Utilization of Plugins:

- **Get_S1_alerts:** Get Alerts by Rule Name with SentinelOne<br>
                                        #ExamplePrompts Get Alerts by Rule Name with SentinelOne.<br>
                                        #ExamplePrompts Filter Alerts by Incident Status with SentinelOne.<br>
                                        #ExamplePrompts Search Alerts by Source File Path with SentinelOne.<br>
                                        #ExamplePrompts Limit Number of Returned Alerts with SentinelOne.<br>
                                        #ExamplePrompts Sort Alerts by Column with SentinelOne.<br>
                                        #ExamplePrompts Filter Alerts by Severity with SentinelOne.<br>
                                        #ExamplePrompts Search Alerts by Source Process Name with SentinelOne.<br>

<p align="center">
<img src="./images/get_alerts_input.png?raw=true">
</p>

- **Get_S1_DeviceInfo** Get the Agents, and their data, that match the filter. This command gives the Agent ID, which you can use in other commands.<br>
                                        #ExamplePrompts Retrieve agent information and their data from SentinelOne EDR product.<br>
                                        #ExamplePrompts Fetch agent details and related data with Sentinel One integration.<br>
                                        #ExamplePrompts Access agent data seamlessly with SentinelOne EDR.<br>
                                        #ExamplePrompts Gain insights into agent information through SentinelOne integration.<br>
                                        #ExamplePrompts Get agent IDs and related data for enhanced security operations with SentinelOne.<br>
                                        #ExamplePrompts Utilize SentinelOne EDR platform to retrieve agent information effortlessly.<br>
<p align="center">
<img src="./images/DeviceInfo_input.png?raw=true">
</p>

- **Get_S1_Application** Get the installed applications for a specific Agent with SentinelOne<br>
                                        #ExamplePrompts Retrieve the list of installed software on a designated device using SentinelOne.<br>
                                        #ExamplePrompts Gather data on the software installations linked to a specific agent utilizing <br>SentinelOne.<br>
                                        #ExamplePrompts Acquire information about the applications currently deployed on a designated machine via SentinelOne.<br>
                                        #ExamplePrompts Extract a catalog of installed programs from a specified agent's system using SentinelOne<br>.
                                        #ExamplePrompts Access the inventory of installed applications tied to a particular SentinelOne agent.<br>
                                        #ExamplePrompts Fetch a report detailing the software installations associated with a specific SentinelOne endpoint.<br>
<p align="center">
<img src="./images/application_input.png?raw=true">
</p>

- **Get_S1_Threats**  Get data of threats that match the filter. Best Use the filters. Each threat gives a number of data lines that will quickly fill the page limit.<br>
                                      #ExamplePrompts Retrieve threat data using SentinelOne's platform.<br>
                                      #ExamplePrompts Fetch threat information with SentinelOne integration.<br>
                                      #ExamplePrompts Access threat data that matches the filter using SentinelOne.<br>
                                      #ExamplePrompts Gather threat details efficiently by utilizing the filters with SentinelOne.<br>
                                      #ExamplePrompts Obtain threat data lines that quickly fill the page limit with SentinelOne.<br>
                                      #ExamplePrompts Utilize the 'Get_S1_Threats' operation in SentinelOne to retrieve threat data.<br>
<p align="center">
<img src="./images/thread_input.png?raw=true">
</p>

- **Get_Hash_S1_Reputation** Get the reputation of a hash, given the required SHA1. To get hash, run "threats" (best if filtered for a Group or Site) and take the file Content Hash value.<br>
                                      #ExamplePrompts Retrieve the reputation of a hash using SentinelOne.<br>
                                      #ExamplePrompts Fetch the reputation score of a hash with SentinelOne integration.<br>
                                      #ExamplePrompts Access the reputation details for a specific hash using SentinelOne's platform.<br>
                                      #ExamplePrompts Gather the reputation information for a hash with the required SHA1 using SentinelOne.<br>
                                      #ExamplePrompts Obtain the reputation score for a hash, utilizing SentinelOne's reputation service.<br>
                                      #ExamplePrompts Utilize the 'Get_Hash_Reputation' operation in SentinelOne to retrieve the reputation of a hash.<br>
<p align="center">
<img src="./images/reputation_input.png?raw=true">
</p>

- **Get_S1_EventsTimeline** Get the timestamp of the first and last Events of the threat's attack storyline.<br>
                                       #ExamplePrompts Retrieve the timeline of events for a specific threat ID using SentinelOne.<br>
                                       #ExamplePrompts Fetch the first and last event timestamps of a threat's attack storyline with SentinelOne integration.<br>
                                       #ExamplePrompts Access the chronological sequence of events associated with a threat ID via SentinelOne's platform.<br>
                                       #ExamplePrompts Gather the timeline details, including the initial and final event timestamps, for a threat's attack storyline using SentinelOne.<br>
                                       #ExamplePrompts Obtain the event timeline for a threat, indicating the onset and conclusion of the attack with SentinelOne.<br>
                                       #ExamplePrompts Utilize the 'Get_S1_EventsTimeline' operation in SentinelOne to retrieve the timeline of events linked to a threat ID.<br>
<p align="center">
<img src="./images/timeline_input.png?raw=true">
</p>

Enhance your SentinelOne exploration with these powerful tools designed to streamline your search and analysis process. Let's dive in! 🚀<br>

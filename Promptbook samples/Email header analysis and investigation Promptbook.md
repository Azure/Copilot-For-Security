![Security CoPilot Logo](https://github.com/Azure/Copilot-For-Security/blob/main/Images/ic_fluent_copilot_64_64%402x.png)
# Email Header analysis 

Description: Investigate a suspicious email by examining the headers , filtering out the entities and concluding with a summary of the email

1. Triage the email 
/AskGPT Can you triage the email header below and point out what you find suspicious? <emailheaders>

2. Idenitfy technical indicators in the email header 

prompt : Can you list all the Technical indicators in the above prompt that we can use for an investigation process

3. Identify domains associated with the email and Threat intelligence associated with it 

prompt : Return the reputation for all the domains in the list

4. Identify IPs associated with the email and Threat intelligence associated with it 

prompt : Return the reputation for all the IP addresses in the list

5. Identify if the entites associated are seen on Threat articles 

prompt: Can you check if there any threat articles associated with any of the Domains or IPS from the list above

6. Identify if the entites sender and return path associated are seen on Threat articles 

prompt: What about the sender and return path emails are they associated with any intelligence articles

7. Check if anyone else had received the email in the organization by using  Defender hunting 

prompt: /LookupDataFromDefender365Hunting Based on the email title check if this email sent to other users?

8. Check if anyone in the organization clickded on any Urls associated with the email y using defender hunting 

prompt: Hunt my environment and determine if any of the users clicked any URL in the email above

9. Summarize the ivnestigation with certaity of suspicious elements

prompt : /AskGPT Based on the above email investigation, summarize this investigation with all the investigation steps taken during this session. Also share supported evidence and let me know if this is a phishing email with certainty percentage: if the email is not suspicious give it 0-30% if it medium suspicious for phishing give it 30%-74% and if its high suspicious as phishing give it 75%-100%. Always include suspicious certainty percentage.

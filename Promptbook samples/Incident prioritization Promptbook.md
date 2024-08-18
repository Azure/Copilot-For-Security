![Security CoPilot Logo](https://github.com/Azure/Copilot-For-Security/blob/main/Images/ic_fluent_copilot_64_64%402x.png)
# Incident Prioritization

**Required Plugin(s)**: *Microsoft 365 Defender*

**Required Input**:< incidentID >

**Description**: These prompts are designed to guide Copilot for Security through an *Incident Prioritization* within an environment, from initial identification to detailed reporting. Remember to tailor these prompts to fit the specific context and systems of your organization.

1. **Prioritize existing incidents**:
   ```
   Give me the top 5 high severity incidents from Microsoft Defender XDR that I should prioritize today. If there are not high severity incidents, give me the top medium severity incidents with the most number of users affected.
   ```

2. **Dig into a specific incident and research users invovled**:
   ```
   For the users involved in <incidentID>, can you give me details about any risky user sign-ins in the past week?
   ```

3. **Dig further into a specific user account**:
   ```
   Can you tell me if there are any other suspicious activities involving the user?
   ```

4. **Summarize user activities**:
   ```
   Thank you! Can you summarize your findings about the user's suspicious activities including the incident it was involved in? Please include any indicators or vulnerabilities that were mentioned.
   ```

5. **Provide recommendations for better securing the environment against the threat**:
   ```
   Can you give me a list of prioritized recommendations that I can do to remove the threat the user introduced in the network?
   ```



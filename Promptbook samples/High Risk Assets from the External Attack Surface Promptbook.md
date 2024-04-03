![Security CoPilot Logo](https://github.com/Azure/Copilot-For-Security/blob/main/Images/ic_fluent_copilot_64_64%402x.png)
# High Risk Assets from the External Attack Surface 

**Required Plugin(s)**: *Microcrosoft Defender threat intelligence*., *Microsoft Defender External attack Surface management*

**Required Input**:< Companyname >

**Description**: This promptbook identifies assets which are high risk and have been recently targeted.

1. **get insights form EASM on specific Organization**:
   ```
   Get the high priority attack surface insights using a prebuilt footprint for <CompanyName> using External Attack surface Management
   ```

2. **Capture Specific CVES from summary**:
   ```
  List all the CVE IDs from the above summary
   ```
3. **See how CVES are aligned to Threat articles**:
   ```
   Check if any of the CVE IDs are associated with any MDTI articles
   ```
4. **Context on Threat articles**:
   ```
   List all the articles and the dates they were published
   ```
5. **Narrow down to Articles published in a short time period**:
   ```
   List all the articles which were published in the last 3 months
   ```
6. **Pivot on what Threat actors are associated in articles**:
   ```
   Tell me of any threat actors associated with these articles
   ```
7. **Industry Targeting in threat actors**:
   ```
   What industries do these threat actors target?
   ```
8. **List assets that have been targeted**:
   ```
   List all the approved host and IP addresses from the <CompanyName> attack surface associated with the CVE IDs found in the MDTI articles in the last 3 months
   ```



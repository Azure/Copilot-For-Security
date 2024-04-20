**GitHub Advanced Security (GhAS) Custom Plugins**

GitHub Advanced Security (GhAS) executes code scanning (Static Application Security Testing, SAST, via CodeQL), dependabot analysis (Software Composition Analysis, SCA) and secret scanning on the files in the repos of GitHub users and organizations.
This folder contains 2 plugins for Copilot for Security:
- One plugin has the skills to list all the alerts resulting from GhAS analysis on all the repos of an organization
- One plugin has the skills to list all the alerts resulting from GhAS analysis on a specific repo of an organization. It has also the skills to get the details of each alert. It allows also to read the configuration for CodeQL on a specific repo.  

Instructions
- In GitHub, create a Personal access tokens of type "classic". Assign to it at least the scope of "repo" / "security_events"
- Obtain the 2 files *Manifest.yaml from this folder
- Upload each of these 2 files in Copilot for Security 
- After each upload, set the 2 requested parameters: the name of your organization in GitHun (write it at the end of the proposed URL) and the personal access token (key)
- Use the different skills in these 2 plugins. 

Note:
- In this initial first preview release, all skills require to specify in input a "User-Agent" parameter. This is a temporary workaround for ensuring that Copilot for Security writes this parameter in the header of its calls to the GitHub APIs (without that header, the APIs return access denied). **In that parameter you can set any value** (the value of that parameter is not relevant)

Author:
Stefano Pescosolido
https://linkedin.com/in/stefanopescosolido

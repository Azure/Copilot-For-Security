**GitHub Advanced Security (GhAS) Custom Plugins**

GitHub Advanced Security (GhAS) executes code scanning (Static Application Security Testing, SAST, via CodeQL), dependabot analysis (Software Composition Analysis, SCA) and secret scanning on the files in the repos of GitHub users and organizations.
This folder contains 2 plugins for Copilot for Security:
- The "GitHub Advanced Security for GitHub Organizations" plugin has the skills to list all the alerts resulting from GhAS analysis on all the repos of an organization. It calls the https://api.github.com/orgs/Org-Name API in GitHub.
- The "GitHub Advanced Security for GitHub Repositories" plugin has the skills to list all the alerts resulting from GhAS analysis on a specific repo of an organization. It has also the skills to get the details of each alert. It allows also to read the CodeQL configuration on a specific repo.  It calls the https://api.github.com/repos/Org-Name API in GitHub.

Instructions
- In GitHub, create a Personal access tokens of type "classic". Assign to it at least the scope of "repo" / "security_events"
- Obtain the 2 files *Manifest.yaml from this folder
- Upload each of these 2 files in Copilot for Security 
- After each upload, set the 2 requested parameters: the name of your organization in GitHun (write it at the end of the proposed URL) and the personal access token (key)
- Use the different skills in these 2 plugins. 

For detailed step-by-step guidance and demos, please refer to https://www.linkedin.com/pulse/copilot-security-custom-plugin-github-advanced-stefano-pescosolido-vrcpf/?trackingId=asq05nvu75FGTlUOJYBw6w%3D%3D

Note:
- In this initial first preview release, all skills require to specify in input a "User-Agent" parameter. This is a temporary workaround for ensuring that Copilot for Security writes this parameter in the header of its calls to the GitHub APIs (without that header, the APIs return access denied). **In that parameter you can set any value** (the value of that parameter is not relevant). Typically you have to write set its value only once in a session: in the following prompts Copilot assumes that its value remains the same.  

Initial release author:
Stefano Pescosolido
https://linkedin.com/in/stefanopescosolido

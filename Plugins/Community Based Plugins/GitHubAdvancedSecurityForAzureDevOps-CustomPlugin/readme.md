**GitHub Advanced Security for Azure DevOps (GAzDO) Custom Plugin**

GitHub Advanced Security for Azure DevOps (GAzDO) executes code scanning (Static Application Security Testing, SAST, via CodeQL), dependabot analysis (Software Composition Analysis, SCA) and secret scanning on the files in the repos of Azure DevOps organizations.
This folder contains a plugin for Copilot for Security that queries the "List" and "Get" API exposed by Azure DevOps and related to Advanced Security (GAzDO).

Instructions
- In Azure DevOps, create a Personal access token. Assign to it at least the scope of "Read" in "Advanced Security"
- Download the file *Manifest.yaml from this folder
- Create the custom plugins in Copilot for Security by uploading this manifest file 
- After the upload, configure the custom plugins by setting the 2 requested parameters: the name of your organization in Azure DevOps (write it at the end of the proposed URL) and the personal access token (key) created in Azure DevOps
- You can now use the skills available in this plugin. 

Initial release author:
Stefano Pescosolido
https://linkedin.com/in/stefanopescosolido

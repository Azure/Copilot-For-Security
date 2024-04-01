![Security CoPilot Logo](https://github.com/Azure/Copilot-For-Security/blob/main/Images/ic_fluent_copilot_64_64%402x.png)
# Microsoft Copilot For Security Community
Welcome to the Copilot for Security Repository!

Microsoft Copilot for Security is a generative AI-powered assistant for daily operations in security and IT that empowers teams to protect at the speed and scale of AI.
- https://learn.microsoft.com/en-us/security-copilot/
- https://learn.microsoft.com/en-us/security-copilot/get-started-security-copilot
- https://learn.microsoft.com/en-us/security-copilot/plugin_overview
- https://learn.microsoft.com/en-us/security-copilot/connectors-overview
- https://aka.ms/copilotforsecurity

## Contributing
This project welcomes contributions and suggestions.  Most contributions require you to agree to a Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). 
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

Here are the steps you can take to begin contributing to this project:

**GitHub account**: 
- Get a GitHub account – ([www.github.com](http://www.github.com) ) - Free account works fine.
- Login with your new account
  
**Fork the Repository**:
- Go to the community page: https://github.com/Azure/Copilot-For-Security
- Make sure you are on the master branch
- Click "Fork" -> "Create a new fork"
  ![Github New Fork](https://github.com/Azure/Copilot-For-Security/blob/main/Images/CFSGithubfork.png)
  ![Create New Fork](https://github.com/Azure/Copilot-For-Security/blob/main/Images/CFSGithubforkCreate.png)
- This will create a copy of the Azure-Sentinel repository in your own GitHub account:
  ![View Your New Fork](https://github.com/Azure/Copilot-For-Security/blob/main/Images/CFSGithubforknew.png)

**Clone the fork to your local machine:**:
-	Create a directory on your local machine where you will pull down the repository to and where you will be working from. 
    Example: “C:\Users\(username)\Documents\GitForks”
-	Open Gitbash and move into the directory “C:\Users\(username)\Documents\GitForks”
-	Run : Git init
-	Run : Git clone <url of your fork> example: Git clone “https://github.com/(username)/ Copilot-For-Security-Fork”
-	Cd into the new directory that is created ie cd Copilot-For-Security-Fork
-	Set the upstream which is the original repo that you forked from ie the Copilot-For-Security community repo
-	Run : Git remote add upstream https://github.com/Azure/Copilot-For-Security
-	Run : Git remote -v

 	 ![Clone to Local Dir](https://github.com/Azure/Copilot-For-Security/blob/main/Images/Clonethefork.png)

**Create a branch**:
- You can work with the local main branch, but it is recommended to work with a branch so if you have separate projects you are working on you can keep them isolated. 
- First you want to sync your local repository to the upstream master (the Azure community itself – not your fork)
    Run : git pull upstream main
- You should see a list of updates that are processed or a message saying you are up to date
- Now that you are in sync create your new branch
    Run : Git checkout -b <branch name> example Git checkout -b Sojeshs_CFSContributions

![Create new Branch](https://github.com/Azure/Copilot-For-Security/blob/main/Images/Createnewbranch.png)

**Install VS Code:**

[[Download Visual Studio Code - Mac, Linux, Windows](https://code.visualstudio.com/Download)]

**Open Branch in VS Code:**

Run VS Code and then File > Open Folder the local repository directory (Example: C:\Users\\(username)\Documents\GitForks\Copilot-For-Security-Fork)

You should see all the directories and files in the repository and at the bottom you can see which branch you are working on. Ensure you have the right branch selected before making any changes.

![Branch Selection](https://github.com/Azure/Copilot-For-Security/blob/main/Images/VSCodeBranchConfirmation.png)


# Welcome to Microsoft Copilot for Security Labs!
# Introduction
![Security CoPilot Logo](https://github.com/Azure/Copilot-For-Security/blob/main/Images/ic_fluent_copilot_64_64%402x.png)
##  Leverage the SANS ("Hunt Evil Poster Document) to guide Investigation Scenarios
#### ⌛ Estimated time to complete this lab: 10 minutes
#### 🎓 Level: 200 (Proficient)

#### Objectives

Upon completing this technical guide, you will gain the following abilities:<br>

* Leverage the Azure AI search plugin with prompts direclty from Copilot For Security.<br>


#### Scenario
"In this technical workshop, participants will learn how to search for documents and leverage the infromation in practical Scurity Operation scenarios .To successfully complete this task, you must meet the following prerequisites:<br>

* You need your own tenant and Microsoft Copilot for Security instance.<br>
* Connect Azure AI search plugin  .<br>


# Workshop Agenda: Azure AI Search integration with Copilot For Security 

## 1. Access the SANS (" Hunt Evil Poster Document")
- Access the Document from the samples folder in the GitHub Here [Hunt Evil Poster PDF](https://github.com/Azure/Copilot-For-Security/blob/main/Technical%20Workshops/Knowledge%20base%20Workshop/Sample%20Files/Hunt%20Evil%20Poster.pdf) or access it from the Link here : https://www.sans.org/posters/hunt-evil/

![Hunt Evil 3](https://github.com/Azure/Copilot-For-Security/blob/main/Images/KB%20Images/huntevil3.png?raw=true)

- Ensure the document is added on your blob storage in the Azure AI search instance , this was already done in the previous Module , you can see the how to here :

## 2. Prompting Using Azure AI Search 

- send out the first Prompt Querying the data in the document , we will focus on a couple of senarios , in the hunt evil document we will focus on pulling infromation associated with Lateral Movement ( key focus on how its achieed with Remote Access or Remote Execution)

Prompt 1: Using Azure AI search access the SANS hunt evil Poster doc, and share with me all the event ID's associated with Remote execution process in a table format

![Hunt Evil Poster](https://github.com/Azure/Copilot-For-Security/blob/main/Images/KB%20Images/huntevil.png?raw=true)

Prompt 2: Leveraging the above Event IDs , hunt my defender environment for any device traffic associated with them
![Hunt Evil Poster 2](https://github.com/Azure/Copilot-For-Security/blob/main/Images/KB%20Images/huntevil2.png?raw=true)


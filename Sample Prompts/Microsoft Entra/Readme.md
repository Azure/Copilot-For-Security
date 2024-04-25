
# Microsoft Entra

- [Entra](#entra)
  - [User Details](#user-details)
  - [Audit Logs](#audit-logs)
  - [Sign in Logs](#sign-in-logs)
  
***
&nbsp;
## User Details
<a name="User Details"></a>
- Who am i
-  What login attempts exist for the user on December 31st? (Created KQL)
- What login attempts exist for the user in the last 14 days? (Created KQL) 
- What login attempts exist for the user **_`<UPN>`_**?   in the last 14 days? (Targeting a specific user)
- Is the user considered risky? If so, why? 
- List all risky user by risklevel
- Tell me more about user **_`<UPN>`_**?  in format-list.
- How many times login failed for this user in the last 30 days and tell me the reasons.
- Generate a report based on Entra plug-in: Is the user **_`<UPN>`_**?  considered risky? If yes, list the 
reasons. 
- Show me the most recent failed sign-in for my account in the last month.
-  Show me the sign-in logs of users who signed in from ,**_`<location>`_**? 
-  Show me the authentication methods enabled for user
-  What are the terms of use agreements for this user
-  Show me the successfully deleted users in the last 7 days.
- List the groups **_`<Username>`_**?  is part of 
- Tell me about security group <**_`<name>`_**?  including who created it and how many members are in it.
- What is the status of the user account for **_`<UPN>`_**? Is it locked out?
-  Show me the successfully deleted users in the last 7 days.

&nbsp;
[![alt text](../../Images/backtotop.svg)](#entra)

## Audit Logs
 - Show me the audit logs for **_`<UPN>`_**? 
 - Show me audit logs for the last 24 hours
- Show me the audit logs for provisioningManagement category
- Show me the audit logs for **_`<service name`_**? 
- Show me audit logs for successful activities
- Show me audit logs for failed activities
- Show me the changes in **_`<resouce>`_**? from audit logs.
 - Show me the successfully deleted users in the last 7 days.
 - Show me newly created conditional access policies from audit logs.
- Show me recently changed conditional access policies from audit logs.

&nbsp;
[![alt text](../../Images/backtotop.svg)](#entra)

## Sign in Logs

 
 - show me sign-in logs for the last 24 hours
 - Show me the sign-in logs for **_`<UPN>`_**? 
    - Show me the sign-in logs of users who signed in from **_`<Location>`_**? 
    - Show me the sign-in logs from **_`<Application>`_**? 
    - Show me the sign-in logs from operating system 'MAC OS
    - Show me the sign-in logs from Edge
    - Show me the sign-in logs from compliant devices
    - Show me the sign-in logs from managed devices
    - Show me the sign in logs for which conditional policies have been applied
    - Show me ca policies evaluated for sign in with request id **_`<Request ID>`_**? 
    - Show me the sign-in logs from client app
    - Can you tell me if conditional access policy is working from sign-in logs
    - Show me the sign-in logs from unmanaged devices in the past 14 days and list the entities involved

&nbsp;
[![alt text](../../Images/backtotop.svg)](#entra)


&nbsp;

**Disclaimer**: Please know these are sample prompts and are subject to Change


***

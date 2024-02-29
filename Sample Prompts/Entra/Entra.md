
# Entra

- [Entra](#entra)
  - [User Details](#user-details)
  - [Audit Logs](#audit-logs)
  - [Sign in Logs](#sign-in-logs)
  - [Conditional Access Policies](#conditional-access-policies)
  - [Access Reviews](#access-reviews)
  - [Entitlement Management](#entitlement-management)
  - [Privileged Access Management](#privileged-access-management)
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
-  - Show me the successfully deleted users in the last 7 days.
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

## Conditional Access Policies

  - Show me all the Conditional Access policies in my tenant
- List conditional Access policies configured in my tenant
- List conditional Access policies configured in the tenant
 - Show me all the Conditional Access policies in my tenant with state
- List conditional Access policies configured in my tenant with state
- Show me the details for this specific Conditional Access policy
 - list conditional access policies created using template
- Get conditional access policy related to 'authentication' in my tenant
-  Show me newly created conditional access policies from audit logs.

&nbsp;
[![alt text](../../Images/backtotop.svg)](#entra)


## Access Reviews

- Get access review by **_`<Name>`_**? 
- Show access review by review **_`<ID>`_**? 
- Get all access review associated with
- Get all access review by **_`<Displayname>`_**? 
- show status of access review
- access review createdBy
- show settings of access review **_`<Name>`_**? 


&nbsp;
[![alt text](../../Images/backtotop.svg)](#entra)

## Entitlement Management


- Show details of an access package for **_`<Sales Team>`_**? 
- Show objects which are incompatible for **_`<Sales Team>`_**? access package
- Show groups which are incompatible for **_`<Sales Team>`_**access package
- Show access package assignment requests in my tenant
- Show me the assignment activity for the **_`<Sales`_** access package
- Show me which connected organizations can access the **_`<Sales`_** access package
- Who is the sponsor from the connected organization who can approve the assignment of **_`<Sales`_**access package
- Who approved the **_`<Sales`_** access package assignment?
- Why was the **_`<Sales`_** access package requested by user(s)

&nbsp;
[![alt text](../../Images/backtotop.svg)](#entra)

## Privileged Access Management

- Show me the details of eligible Entra role assignments which I can activate through PIM
 - Show me the details of a request made to activate an Entra role through PIM
- Show me the details of a specific active Entra role assignment request made through PIM
- Show me the details of requests made to create eligible Entra (Azure AD) role assignments through PIM
- Show me the details of a specific eligible Entra (Azure AD) role assignment request made through PIM
- Show me the details of a specific active Entra role assignment (unifiedRoleAssignmentScheduleId)
- Show me the details of all eligible Entra (Azure AD) role assignments
 - Show me the details of a specific eligible Entra role assignment (unifiedRoleEligibilityScheduleId)
 - Show me the details of requests made to create active role assignments through PIM
- Show me the details of role management policies that apply to Entra roles
- Show me the details of a specific role management policy that apply to Entra roles (unifiedRoleManagementPolicyId)
- Show me the rules or settings defined for a specific role management policy that apply to Entra roles
- Show me a rule or a setting defined for a specific role management policy that apply to Entra roles
 - Show me the details of all role management policy assignments including the policies and rules associated with the Entra roles
- Show me the details of a role management policy assignment including the policy and rules associated with the Entra role


&nbsp;
[![alt text](../../Images/backtotop.svg)](#entra)

***
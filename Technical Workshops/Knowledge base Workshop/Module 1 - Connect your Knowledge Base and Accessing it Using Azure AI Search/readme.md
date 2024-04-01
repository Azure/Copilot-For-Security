# Welcome to Microsoft Copilot for Security Labs!
# Introduction
![Security CoPilot Logo](https://github.com/Azure/Copilot-For-Security/blob/main/Images/ic_fluent_copilot_64_64%402x.png)
## Setup to Azure AI search 
#### ⌛ Estimated time to complete this lab: 20 minutes
#### 🎓 Level: 100 (Beginner)

#### Objectives

Upon completing this technical guide, you will gain the following abilities:<br>

* Set up a Blob Storage .<br>
* Add Sample files to the Blob Storage.<br>
* Set up an Azure AI Services AI search instance .<br>

#### Scenario
"In this technical workshop, participants will learn how to set up a Blob Storage, add sample files to the Blob Storage, set up an Azure AI instance. To successfully complete this task, you must meet the following prerequisites:<br>

* You need your own tenant and Microsoft Copilot for Security instance.<br>
* You should have permission to create an AZURE AI Instance.<br>
* You should have permission to create a bob storage.<br>

# Workshop Agenda: Azure AI Search

# Workshop Agenda: Azure Search Workshop

## 1. Introduction to Azure Search:
- Overview of Azure Search features and capabilities.
- Understanding the benefits of using [Azure Search](https://azure.microsoft.com/en-us/services/search/) for building search solutions.

## 2. Setting Up Environment:
- Provisioning an [Azure Search service instance](https://docs.microsoft.com/en-us/azure/search/search-create-service-portal).

## 3. Designing Search Index:
- Defining schema, mapping fields, and configuring indexers.
  
## 4. Customizing Search Experience:
- Creating custom search UI and implementing filters.
  
## 5. Building Search UI:
- Exploring UI frameworks and configuring search widgets.
  
## 6. Enhancing Search Solution:
- Leveraging [Azure Cognitive Search](https://azure.microsoft.com/en-us/services/cognitive-services/search/) for advanced features.

## Set up Blob Storage to act as your knowledgeBase
# Workshop Agenda: Azure Blob Storage Quickstart Workshop

## 1. Introduction to Azure Blob Storage:
- Overview of Azure Blob Storage features and capabilities.
- Understanding the benefits of using [Azure Blob Storage](https://azure.microsoft.com/en-us/services/storage/blobs/) for storing unstructured data.
- Reference: ![Azure Blob Storage Logo](https://docs.microsoft.com/en-us/azure/storage/common/storage-introduction.svg)

## 2. Setting Up Your Azure Environment:
- Setting up an [Azure subscription](https://azure.microsoft.com/free/) (if you haven't already).
- Creating a resource group for your storage account.
- Provisioning an [Azure Storage account](https://docs.microsoft.com/en-us/azure/storage/common/storage-quickstart-create-account?tabs=azure-portal).
- Reference: ![Azure Subscription](https://docs.microsoft.com/en-us/azure/storage/blobs/media/storage-create-storage-account/create-storage-account-1.png), ![Azure Storage Account](https://docs.microsoft.com/en-us/azure/storage/blobs/media/storage-create-storage-account/create-storage-account-2.png)

## 3. Creating a Blob Container:
- Creating a container within your storage account to organize your blobs.
- Configuring container properties such as access level and metadata.
- Reference: ![Create Blob Container](https://docs.microsoft.com/en-us/azure/storage/blobs/media/storage-quickstart-blobs-portal/create-blob-container.png)

## 4. Uploading and Managing Blobs:
- Uploading files and data to your blob container using the Azure Portal.
- Viewing and managing blobs within your container, including properties and metadata.
- Reference: ![Upload Blob](https://docs.microsoft.com/en-us/azure/storage/blobs/media/storage-quickstart-blobs-portal/upload-blob.png), ![Manage Blobs](https://docs.microsoft.com/en-us/azure/storage/blobs/media/storage-quickstart-blobs-portal/manage-blob.png)

## 5. Accessing Blobs:
- Configuring access permissions for blobs and containers.
- Generating shared access signatures (SAS) for secure access to blobs.
- Reference: ![Access Control](https://docs.microsoft.com/en-us/azure/storage/blobs/media/storage-quickstart-blobs-portal/access-control.png), ![Generate SAS](https://docs.microsoft.com/en-us/azure/storage/blobs/media/storage-quickstart-blobs-portal/generate-sas.png)

## 6. Monitoring and Managing Storage Accounts:
- Monitoring storage account metrics and logs.
- Setting up alerts and diagnostics for storage account health.
- Reference: ![Monitor Storage Account](https://docs.microsoft.com/en-us/azure/storage/blobs/media/storage-quickstart-blobs-portal/monitor-storage-account.png), ![Manage Storage Account](https://docs.microsoft.com/en-us/azure/storage/blobs/media/storage-quickstart-blobs-portal/manage-storage-account.png)

## Azure Blob Storage Integration with Azure Search
## Agenda:

1. **Key Concepts**
   - Explaining indexing and querying within Azure Search. [Learn more about Azure Search](https://learn.microsoft.com/en-us/azure/search/search-what-is-azure-search)
   - Understanding blob storage containers and blobs. [Read documentation](https://docs.microsoft.com/en-us/azure/storage/blobs/storage-blobs-introduction)

2. **Integration Setup**
   - Step-by-step guide to setting up Azure Blob Storage and Azure Search services.
   - Configuring permissions and access policies.

3. **Indexing Blob Data**
   - Demonstrating how to index blob data using Azure Search.
   - Mapping blob properties to searchable fields.

4. **Querying Blob Data**
   - Hands-on exercises on querying blob data using Azure Search.
   - Discussion on different query types and their applications.
   
5. **Customizing Search Experience**
   - Exploring options to customize search experiences.
   - Implementing filters, facets, and sorting for enhanced user experience.


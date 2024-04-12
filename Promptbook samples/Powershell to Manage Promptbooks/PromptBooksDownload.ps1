# Set the execution policy if PowerShell execution is not allowed
# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
# Copy the token from the Authorization Header (use Browser Devtools) and pass as command line arguement -token <token> 
 
#--------- Temp
#$jsonContent = Get-Content './Sample.json'
#-----------------------
#Replace the region in URI with your own "https://api.securitycopilot.microsoft.com/geo/<region>/promptbooks"

param (
    [Parameter(Mandatory=$true)][string]$token #Make it mandatory till upload can be done
 )
 
$url = "https://api.securitycopilot.microsoft.com/geo/eastus/promptbooks"
$headers = @{
    "Content-Type" = "application/json"
    "Authorization" = "Bearer $token"
}


Write-Host "Starting PromptBooks download ..."

$response = Invoke-WebRequest -Uri $url -Method GET -Headers $headers
$jsonContent = $response.content
$fromJson = $jsonContent | ConvertFrom-Json 

Write-Host "Number of promptbooks Downloaded: $($fromJson.value.Count)" #$jsonContent

# Iterate for each promptbook in JSON
$folder = './Downloads/'
foreach ($pb in $fromJson.value) {
    
    $fileName = $pb.name + ".json"
    # Remove all special chars from filename
    $fileName= $fileName.replace("'","")
    $fileName= $fileName.replace("(","")
    $fileName= $fileName.replace(")","")
    $fileName= $fileName.replace("[","-")
    $fileName= $fileName.replace("]","-")
    $fileName= $fileName.replace(' ','_') 
    $fileName = $folder + $fileName 

    # Remove II fields for security reasons
    $pb.visibility = "Private" #Change all to private which can be changed later on 
    $pb.PSObject.Properties.Remove('promptbookId')
    $pb.PSObject.Properties.Remove('createdAt')
    $pb.PSObject.Properties.Remove('updatedAt')
    $pb.PSObject.Properties.Remove('workspaceId')
    $pb.PSObject.Properties.Remove('userId')
    $pb.PSObject.Properties.Remove('tenantId')
    $pb.PSObject.Properties.Remove('ownerName')
    foreach ($p in $pb.prompts) # Update data for each prompt
    {
        $p.PSObject.Properties.Remove('promptbookPromptId')
        $p.PSObject.Properties.Remove('plugins')
    }

    $json = $pb | ConvertTo-Json
    #Write-Host $json
    "$json" | out-file -filepath $fileName #-encoding utf8NoBOM

    Write-Host "Written file $($fileName)"
}

Exit


#------------
param (
    [Parameter(Mandatory=$true)][string]$token #Make it mandatory till upload can be done
 )

#Replace the region in URI with your own "https://api.securitycopilot.microsoft.com/geo/<region>/promptbooks"
$url = "https://api.securitycopilot.microsoft.com/geo/eastus/promptbooks"
$headers = @{
    "Content-Type" = "application/json"
    "Authorization" = "Bearer $token"
}

# Get all files in the Files folder
$allFiles = Get-ChildItem -Path "./Files"

Write-Host "Starting PromptBooks upload ..."

# Loop through each file and upload it via a POST call
foreach ($file in $allFiles) {
    Write-Host "Uploading: " + $file.fullName
    $jsonContent = Get-Content $file.fullName
    $statusCode = Invoke-WebRequest -Uri $url -Method POST -Body $jsonContent -Headers $headers
    Write-Output $statusCode.StatusDescription
}

#az logout # i using Azure CLI

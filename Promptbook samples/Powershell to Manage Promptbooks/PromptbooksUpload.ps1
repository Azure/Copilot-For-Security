# Set the execution policy if PowerShell execution is not allowed
# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Copy the token from the Authorization Header (use Browser Devtools) and pass as command line arguement -token <token> 
 
 param (
    [Parameter(Mandatory=$true)][string]$token #Make it mandatory till upload can be done
 )

Write-Host "DISCLAIMER: This method to upload Promptbooks uses unpublished API calls that are subject to change without notice. This is not an officially supported method from Microsoft and no guarantees are given that this method will work in your environment. Support tickets on its functionality cannot be raised." 

#Replace the region in URI with your own "https://api.securitycopilot.microsoft.com/geo/<region>/promptbooks"
$url = "https://api.securitycopilot.microsoft.com/geo/eastus/promptbooks"
$headers = @{
    "Content-Type" = "application/json"
    "Authorization" = "Bearer $token"
}

# Get all files in the Files folder
$allFiles = Get-ChildItem -Path "./Uploads"

Write-Host "Starting PromptBooks upload ..."

# Loop through each file and upload it via a POST call
foreach ($file in $allFiles) {
    Write-Host "Uploading: " + $file.fullName
    $jsonContent = Get-Content $file.fullName
    $statusCode = Invoke-WebRequest -Uri $url -Method POST -Body $jsonContent -Headers $headers
    Write-Host $statusCode.StatusDescription
}

#az logout # i using Azure CLI

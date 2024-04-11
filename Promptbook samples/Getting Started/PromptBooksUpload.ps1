# Set the execution policy if PowerShell execution is not allowed
# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Copy the token from the Authorization Header (use Browser Devtools) and pass as command line arguement -token <token> 
 
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

Write-Output "Starting PromptBooks upload ..."

# Loop through each file and upload it via a POST call
foreach ($file in $allFiles) {
    Write-Output "Uploading: " + $file.fullName
    $jsonContent = Get-Content $file.fullName
    $statusCode = Invoke-WebRequest -Uri $url -Method POST -Body $jsonContent -Headers $headers
    Write-Output $statusCode.StatusDescription
}

#az logout # i using Azure CLI

$orgname = "your-organization-name"
$ProjectName = "projectname-under-the-organization"
$user = "usermail@email.com"

$pat = "collect-the-personal-access-token-from-azure-devops-server"
$header = @{Authorization = 'Basic ' + [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(":$pat")) }

# Query to extract Id, Title, State 
$body = @{
    query = "Select [System.Id], [System.Title], [System.State] From WorkItems Where [System.AssignedTo] = '$user'"
} | ConvertTo-Json

$uri1 = "https://dev.azure.com/$orgname/_apis/wit/wiql?api-version=5.1"
$result = Invoke-RestMethod -Uri $uri1 -Method Post -ContentType "application/json" -Headers $header -Body $body

# Extracting work item IDs and convert into a comma-separated string
$workitemIds = ($result.workItems | Select-Object -ExpandProperty id) -join ','

$Uri2 = "https://dev.azure.com/$orgname/$ProjectName/_apis/wit/workitems?ids=$workitemIds&api-version=5.1"
$workitems = Invoke-RestMethod -Uri $Uri2 -Method Get -Headers $header

$details = foreach ($item in $workitems.value) {
    if ($item.fields.'System.AssignedTo'.emailAddress -eq $user) {
        [PSCustomObject]@{
            "id"      = [int]$item.id
            "name"    = $item.fields.'System.AssignedTo'.displayName
            "status"  = $item.fields.'System.State'
        }
    }
}

# Specify the path where you want to save the CSV file
$filePath2 = "C:\Users\powershell\final.csv"
$details | Export-Csv -Path $filePath2 -NoTypeInformation
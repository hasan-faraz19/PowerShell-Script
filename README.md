Azure DevOps Work Item Fetcher
This PowerShell script fetches Azure DevOps work items assigned to a specific user and exports them to a CSV file.

Description
This script connects to your Azure DevOps organization, queries work items assigned to a specified user (by name or email), and exports relevant information such as work item ID, assigned to, and status to a CSV file.

Prerequisites
Before running the script, ensure you have the following:

Azure DevOps Personal Access Token (PAT): Generate a PAT with appropriate permissions to access work items in your Azure DevOps organization.
PowerShell: Make sure you have PowerShell installed on your system.
Usage
Clone the repository:

bash
Copy code
git clone https://github.com/your-username/azure-devops-work-item-fetcher.git
Open the PowerShell script (fetch_work_items.ps1) in a text editor.

Modify the following variables according to your Azure DevOps configuration:

$orgname: Your Azure DevOps organization name.
$ProjectName: Name of the project within the organization.
$user: Email address of the user whose work items you want to fetch.
$pat: Your Azure DevOps Personal Access Token.
Save the changes to the script.

Run the script:

bash
Copy code
./fetch_work_items.ps1
The script will generate a CSV file (final.csv) in the local directory containing the fetched work items.

Notes
Ensure that the PAT used in the script has appropriate permissions to access work items.
Make sure you have proper network connectivity to access Azure DevOps services.
Review the generated CSV file for accurate work item details.
Contributing
Contributions are welcome! If you find any issues or have suggestions for improvements, please feel free to open an issue or create a pull request.

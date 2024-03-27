<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

  <h1>Azure DevOps Work Item Fetcher</h1>

  <p>This PowerShell script fetches Azure DevOps work items assigned to a specific user and exports them to a CSV file.</p>

  <h2>Description</h2>

  <p>This script connects to your Azure DevOps organization, queries work items assigned to a specified user (by name or email), and exports relevant information such as work item ID, assigned to, and status to a CSV file.</p>

  <h2>Prerequisites</h2>

  <p>Before running the script, ensure you have the following:</p>
  <ul>
    <li>Azure DevOps Personal Access Token (PAT): Generate a PAT with appropriate permissions to access work items in your Azure DevOps organization.</li>
    <li>PowerShell: Make sure you have PowerShell installed on your system.</li>
  </ul>

  <h2>Usage</h2>

  <ol>
    <li>Clone the repository:</li>
  </ol>

  <pre><code>git clone https://github.com/your-username/azure-devops-work-item-fetcher.git</code></pre>

  <ol start="2">
    <li>Open the PowerShell script (<code>fetch_work_items.ps1</code>) in a text editor.</li>
    <li>Modify the following variables according to your Azure DevOps configuration:</li>
  </ol>

  <pre><code>
    $orgname="your-organization-name"<br>
    $ProjectName="projectname-under-the-organization"<br>
    $user="usermail@email.com"<br>
    $pat="collect-the-personal-access-token-from-azure-devops-server"
  </code></pre>

  <ol start="5">
    <li>Save the changes to the script.</li>
    <li>Run the script:</li>
  </ol>

  <pre><code>./fetch_work_items.ps1</code></pre>

  <ol start="7">
    <li>The script will generate a CSV file (<code>final.csv</code>) in the local directory containing the fetched work items.</li>
  </ol>

  <h2>Notes</h2>

  <ul>
    <li>Ensure that the PAT used in the script has appropriate permissions to access work items.</li>
    <li>Make sure you have proper network connectivity to access Azure DevOps services.</li>
    <li>Review the generated CSV file for accurate work item details.</li>
  </ul>

  <h2>Contributing</h2>

  <p>Contributions are welcome! If you find any issues or have suggestions for improvements, please feel free to open an issue or create a pull request.</p>

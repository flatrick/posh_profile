# Define patterns to match unwanted paths in $ENV:PATH
$unwantedPatterns = @(
    "JetBrains\JetBrains Rider 2023.1",
    "AppData\Local\Programs\Ollama",
    "AppData\Local\Programs\oh-my-posh",
    "AppData\Local\Microsoft\WinGet\Packages\",
)

# Split $ENV:PATH into an array of paths
$currentPaths = $ENV:PATH -split ';'

# Filter out paths that are empty or match any of the unwanted patterns
$filteredPaths = $currentPaths | Where-Object {
    $keepPath = $true
    foreach ($pattern in $unwantedPatterns) {
        if ($_ -like "*$pattern*") {
            $keepPath = $false
            break
        }
    }
    $_ -and $keepPath  # Ensure it's not empty and doesn't match any unwanted pattern
}

# Rebuild the PATH variable with the filtered paths
$updatedPath = ($filteredPaths -join ';') + ';'

Write-Output "Updated PATH (preview only): $updatedPath"

# Optionally, save the updated PATH to the user environment
[Environment]::SetEnvironmentVariable("PATH", $updatedPath, "User")


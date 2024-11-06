# Define patterns to match unwanted paths in $ENV:PATH
$unwantedPatterns = @(
    "firstStringHere",
    "SecondStringHere"
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

# Remove duplicate paths
$uniquePaths = $filteredPaths | Select-Object -Unique

# Rebuild the PATH variable with the filtered paths
$updatedPath = ($uniquePaths -join ';') + ';'

Write-Output "Updated PATH (preview only): $updatedPath"

# Optionally, save the updated PATH to the user environment
[Environment]::SetEnvironmentVariable("PATH", $updatedPath, "User")


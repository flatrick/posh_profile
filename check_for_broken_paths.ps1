<# This simple scripts merely looks for paths in $ENV:PATH that doesn't exist #>

function Check-DeadPathsInPath ($scope) {
    Write-Host "Checking for dead paths in PATH for $scope"
    ([Environment]::GetEnvironmentVariable("PATH", $scope)) -split ";" | ForEach-Object {
        if ($_ -and -not (Test-Path $_)) {
            Write-Output "Non-existent path: $_"
        }
    }
}

# Run the function for both "Machine" and "User" scopes
Check-DeadPathsInPath -scope "Machine"
Check-DeadPathsInPath -scope "User"
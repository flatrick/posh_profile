# Ensure $ENV:PATH ends with a semicolon
if (-NOT $ENV:PATH.EndsWith(";")) {
    $ENV:PATH += ";"
}

# Define an array of paths to add
$pathsToAdd = @(
    "c:\tools\bat\",
    "c:\tools\broot\",
    "c:\tools\delta\",
    "c:\tools\dua\",
    "c:\tools\duf\",
    "c:\tools\dust\",
    "c:\tools\eza\",
    "C:\tools\fd\",
    "c:\tools\fzf\",
    "c:\tools\lazygit\",
    "c:\tools\less\",
    "c:\tools\procs\",
    "c:\tools\rare\",
    "c:\tools\ripgrep\",
    "c:\tools\tokei\",
    "C:\tools\jq\",
    "C:\tools\xq\",
    "C:\tools\yq\"
)

# Add each path only if it's not already in $ENV:PATH
foreach ($path in $pathsToAdd) {
	if ((Test-Path -Path $path) -and (-NOT $ENV:PATH.Contains($path))) {
        $ENV:PATH += "$path;"
    }
}

# Set the updated PATH environment variable for the current user
[Environment]::SetEnvironmentVariable("PATH", $ENV:PATH, "User")

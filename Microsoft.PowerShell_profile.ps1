Invoke-Expression (&starship init powershell)

Set-PsFzfOption -TabExpansion
Set-PsFzfOption -EnableAliasFuzzyEdit
#Set-PsFzfOption -EnableAliasFuzzySetLocation <# I've replaced the use of this with fd.exe #>
Set-PsFzfOption -EnableAliasFuzzyHistory
Set-PsFzfOption -EnableAliasFuzzyGitStatus

<# My aliases for tools #>

Set-Alias -Name npp -Value 'C:\tools\Notepad++\notepad++.exe'
<# Custom functions for tools #>  
Function br {
  $args = $args -join ' '
  $cmd_file = New-TemporaryFile
  
  $process = Start-Process -FilePath 'broot.exe' `
                           -ArgumentList "--outcmd $($cmd_file.FullName) $args" `
                           -NoNewWindow -PassThru -WorkingDirectory $PWD

  Wait-Process -InputObject $process #Faster than Start-Process -Wait
  If ($process.ExitCode -eq 0) {
    $cmd = Get-Content $cmd_file
    Remove-Item $cmd_file
    If ($cmd -ne $null) { Invoke-Expression -Command $cmd }
  } Else {
    Remove-Item $cmd_file
    Write-Host "`n" # Newline to tidy up broot unexpected termination
    Write-Error "broot.exe exited with error code $($process.ExitCode)"
  }
}

Function ll {
	eza --long --all --flags --group-directories-first
}

Function la {
	eza --long --all --group-directories-first --absolute
}

Function gll {
	eza --long --all --flags --group-directories-first --git
}

Function gla {
	eza --long --all --flags --group-directories-first --absolute --git 
}

# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Prompt
$omp_config = Join-Path $PSScriptRoot ".\keplerleo.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression
#oh-my-posh init pwsh --config C:\Users\leoke\AppData\Local\Programs\oh-my-posh\themes/jblab_2021.omp.json | Invoke-Expression

# Posh Git
Import-Module posh-git

# Terminal Icons
Import-Module Terminal-Icons

# PSReadLine
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History

# Fzf
import-Module PSFzf
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }

# Env
$env:GIT_SSH = "C:\Windows\system32\OpenSSH\ssh.exe"

# Alias
Set-Alias grep findstr
Set-Alias ll ls
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias head 'C:\Program Files\Git\usr\bin\head.exe'
Set-Alias tail 'C:\Program Files\Git\usr\bin\tail.exe'
Set-Alias wc 'C:\Program Files\Git\usr\bin\wc.exe'
Set-Alias tail 'C:\Program Files\Git\usr\bin\tail.exe'
Set-Alias who 'C:\Program Files\Git\usr\bin\who.exe'

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

# Clear
clear

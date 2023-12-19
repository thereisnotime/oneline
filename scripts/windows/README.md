# oneline - Windows

Frequently used one-liners in real life for your copy-pasting needs.

## DO Cli

```powershell
$owner = "digitalocean"
$repo = "doctl"
$installPath = "C:\Windows\system32\"
if (-not (New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) { throw "This script requires administrative privileges. Please run as Administrator." }
$tempDir = New-Item -ItemType Directory -Path (Join-Path -Path $Env:TEMP -ChildPath ([System.IO.Path]::GetRandomFileName()))
Set-Location -Path $tempDirn
$apiUrl = "https://api.github.com/repos/$owner/$repo/releases/latest"
$response = Invoke-RestMethod -Uri $apiUrl
$version = $response.tag_name -replace '^v', ''
$downloadUrl = "https://github.com/$owner/$repo/releases/download/v$version/doctl-$version-windows-amd64.zip"
$zipPath = Join-Path -Path $tempDir -ChildPath "doctl.zip"
Invoke-WebRequest -Uri $downloadUrl -OutFile $zipPath
Expand-Archive -Path $zipPath -DestinationPath $tempDir
Copy-Item -Path (Join-Path -Path $tempDir -ChildPath "doctl.exe") -Destination (Join-Path -Path $installPath -ChildPath "doctl.exe")
Remove-Item -Path $tempDir -Recurse -Force
```

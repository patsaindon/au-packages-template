If (!(Test-Path $env:ChocolateyInstall\license )){ New-Item $env:ChocolateyInstall\license -Type Directory }
If (!(Test-Path $env:ChocolateyInstall\extensions\chocolatey )){ New-Item $env:ChocolateyInstall\extensions\chocolatey -Type Directory }
If (!(Test-Path $env:ChocolateyInstall\license\chocolatey.license.xml )){ Copy-Item chocolatey.license.xml $env:ChocolateyInstall\license }
#choco upgrade chocolatey -yf --no-progress
choco install chocolatey.extension -y

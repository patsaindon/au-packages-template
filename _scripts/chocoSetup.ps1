If (!(Test-Path $env:ChocolateyInstall\license )){ New-Item $env:ChocolateyInstall\license -Type Directory }
If (!(Test-Path $env:ChocolateyInstall\extensions\chocolatey )){ New-Item $env:ChocolateyInstall\extensions\chocolatey -Type Directory }
If (!(Test-Path $env:ChocolateyInstall\license\chocolatey.license.xml )){ Copy-Item _scripts/chocolatey.license.xml $env:ChocolateyInstall\license }
#choco upgrade chocolatey -yf --no-progress
choco install au chocolatey.extension -y --no-progress
#cd copyq
dir
cd prey
./update.ps1
choco apikey -k ${env:API_KEY} -s http://nexxus.utower.xyz/repository/choco-local/
choco push D:\a\1\s\prey\prey.1.10.11.nupkg -Source http://nexxus.utower.xyz/repository/choco-local/ -ApiKey admin:${env:API_KEY}



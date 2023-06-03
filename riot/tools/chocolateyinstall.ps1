# Generated with JReleaser 1.7.0-SNAPSHOT at 2023-06-03T06:36:46.620470957Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'riot-3.0.2'
$app_exe = Join-Path $app_home 'bin/riot.bat'

Install-ChocolateyZipPackage `
    -PackageName 'redis-riot' `
    -Url 'https://github.com/redis-developer/riot/releases/download/v3.0.2/riot-3.0.2.zip' `
    -Checksum '4965657bd4e86a761944761b498f63b3e018e3a91d08c1e3225831dc2caf71f3' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'riot' -Path $app_exe

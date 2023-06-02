# Generated with JReleaser 1.7.0-SNAPSHOT at 2023-06-02T05:59:45.932074988Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'riot-3.0.1'
$app_exe = Join-Path $app_home 'bin/riot.bat'

Install-ChocolateyZipPackage `
    -PackageName 'riot' `
    -Url 'https://github.com/redis-developer/riot/releases/download/v3.0.1/riot-3.0.1.zip' `
    -Checksum 'd4cb2e81b564dd1a9970d0e95e34d1359480dc149e97577388105fd400bf2647' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'riot' -Path $app_exe

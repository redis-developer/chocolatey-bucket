# Generated with JReleaser 1.7.0-SNAPSHOT at 2023-06-16T20:44:40.883738013Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'riot-3.0.4'
$app_exe = Join-Path $app_home 'bin/riot.bat'

Install-ChocolateyZipPackage `
    -PackageName 'redis-riot' `
    -Url 'https://github.com/redis-developer/riot/releases/download/v3.0.4/riot-3.0.4.zip' `
    -Checksum 'ae379f266e020e34de494218c5427caeb83cf0498e43ab46ed035513406bf515' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'riot' -Path $app_exe

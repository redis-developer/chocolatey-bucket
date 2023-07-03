# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-03T07:40:52.34747229Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'riot-3.1.1'
$app_exe = Join-Path $app_home 'bin/riot.bat'

Install-ChocolateyZipPackage `
    -PackageName 'redis-riot' `
    -Url 'https://github.com/redis-developer/riot/releases/download/v3.1.1/riot-3.1.1.zip' `
    -Checksum 'a40960bfdd8a519eed66fd92cb3d5698df9147d33c8fe354a5ed514a9291360f' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'riot' -Path $app_exe

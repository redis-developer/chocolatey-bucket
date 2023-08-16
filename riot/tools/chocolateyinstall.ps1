# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-08-16T17:07:46.198064826Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'riot-3.1.5'
$app_exe = Join-Path $app_home 'bin/riot.bat'

Install-ChocolateyZipPackage `
    -PackageName 'redis-riot' `
    -Url 'https://github.com/redis-developer/riot/releases/download/v3.1.5/riot-3.1.5.zip' `
    -Checksum 'aabbc86ec33c4dd64ab3f73ea9166c51d29dcce3ad168a6a59ceba498e444428' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'riot' -Path $app_exe

# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-11T08:23:56.551766451Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'riot-3.1.3'
$app_exe = Join-Path $app_home 'bin/riot.bat'

Install-ChocolateyZipPackage `
    -PackageName 'redis-riot' `
    -Url 'https://github.com/redis-developer/riot/releases/download/v3.1.3/riot-3.1.3.zip' `
    -Checksum 'ea140b8211620513e9932d96a6f6b1a6c67ca502bd81d7210d0632b70cde7c67' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'riot' -Path $app_exe

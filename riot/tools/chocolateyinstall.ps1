# Generated with JReleaser 1.7.0-SNAPSHOT at 2023-06-07T16:57:04.670996308Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'riot-3.0.3'
$app_exe = Join-Path $app_home 'bin/riot.bat'

Install-ChocolateyZipPackage `
    -PackageName 'redis-riot' `
    -Url 'https://github.com/redis-developer/riot/releases/download/v3.0.3/riot-3.0.3.zip' `
    -Checksum 'a2daff1e9dae331757ed04db6f6926cb8b1f178379a2dc02bac497f8810c400c' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'riot' -Path $app_exe

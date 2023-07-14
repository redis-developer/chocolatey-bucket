# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-14T05:48:58.215271027Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'riot-3.1.4'
$app_exe = Join-Path $app_home 'bin/riot.bat'

Install-ChocolateyZipPackage `
    -PackageName 'redis-riot' `
    -Url 'https://github.com/redis-developer/riot/releases/download/v3.1.4/riot-3.1.4.zip' `
    -Checksum '4a499684c8e7888cb6cd224d87fd37fe609ed32e0416c818b517b4cfa12699aa' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'riot' -Path $app_exe

# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-05T23:49:08.84095428Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'riot-3.1.2'
$app_exe = Join-Path $app_home 'bin/riot.bat'

Install-ChocolateyZipPackage `
    -PackageName 'redis-riot' `
    -Url 'https://github.com/redis-developer/riot/releases/download/v3.1.2/riot-3.1.2.zip' `
    -Checksum '2557e6d16662d626a133c887b5bc8e9560ad9dac9b969df13fca982dd5553ee5' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'riot' -Path $app_exe

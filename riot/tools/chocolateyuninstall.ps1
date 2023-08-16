# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-08-16T17:07:46.198064826Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'riot-3.1.5'
$app_exe = Join-Path $app_home 'bin/riot.bat'

Uninstall-BinFile -Name 'riot' -Path $app_exe

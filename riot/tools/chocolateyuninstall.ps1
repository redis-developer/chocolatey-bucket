# Generated with JReleaser 1.7.0-SNAPSHOT at 2023-06-02T05:59:45.932074988Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'riot-3.0.1'
$app_exe = Join-Path $app_home 'bin/riot.bat'

Uninstall-BinFile -Name 'riot' -Path $app_exe

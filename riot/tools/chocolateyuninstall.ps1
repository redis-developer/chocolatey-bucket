# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-14T05:48:58.215271027Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'riot-3.1.4'
$app_exe = Join-Path $app_home 'bin/riot.bat'

Uninstall-BinFile -Name 'riot' -Path $app_exe

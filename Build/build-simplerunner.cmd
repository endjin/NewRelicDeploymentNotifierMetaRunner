MKDIR %~dp0..\Drops
MKDIR %~dp0..\Drops\Temp\SimpleRunner

XCOPY /E /Y "%~dp0..\Solutions\SimpleRunner\*.*" "%~dp0..\Drops\Temp\SimpleRunner"

@PowerShell -File "%~dp0Create-Zip.ps1" %~dp0..\Drops\Temp\SimpleRunner\agent\ %~dp0..\Drops\Temp\SimpleRunner\agent\nr_deployment_notifier.zip

DEL "%~dp0..\Drops\Temp\SimpleRunner\agent\*.xml"
RMDIR "%~dp0..\Drops\Temp\SimpleRunner\agent\bin" /S /Q

@PowerShell -File "%~dp0Create-Zip.ps1" -target %~dp0..\Drops\Temp\SimpleRunner\ %~dp0..\Drops\newrelic-deployment-notifier.zip

RMDIR "%~dp0..\Drops\Temp\" /S /Q
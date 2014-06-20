MKDIR %~dp0..\Drops
MKDIR %~dp0..\Drops\Temp\PowerShellRunner

XCOPY /E /Y "%~dp0..\Solutions\PowerShellRunner\*.*" "%~dp0..\Drops\Temp\PowerShellRunner"

@PowerShell -File "%~dp0Create-Zip.ps1" %~dp0..\Drops\Temp\PowerShellRunner\agent\ %~dp0..\Drops\Temp\PowerShellRunner\agent\nr_deployment_notifier.zip

DEL "%~dp0..\Drops\Temp\PowerShellRunner\agent\*.xml"
RMDIR "%~dp0..\Drops\Temp\PowerShellRunner\agent\bin" /S /Q

@PowerShell -File "%~dp0Create-Zip.ps1" -target %~dp0..\Drops\Temp\PowerShellRunner\ %~dp0..\Drops\newrelic-deployment-notifier.zip

RMDIR "%~dp0..\Drops\Temp\" /S /Q

PAUSE
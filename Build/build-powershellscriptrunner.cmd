MKDIR %~dp0..\Drops
MKDIR %~dp0..\Drops\Temp\PowerShellScriptRunner

XCOPY /E /Y "%~dp0..\Solutions\PowerShellScriptRunner\*.*" "%~dp0..\Drops\Temp\PowerShellScriptRunner"

@PowerShell -File "%~dp0Create-Zip.ps1" %~dp0..\Drops\Temp\PowerShellScriptRunner\agent\ %~dp0..\Drops\Temp\PowerShellScriptRunner\agent\nr_deployment_notifier.zip

DEL "%~dp0..\Drops\Temp\PowerShellScriptRunner\agent\*.xml"
RMDIR "%~dp0..\Drops\Temp\PowerShellScriptRunner\agent\bin" /S /Q

@PowerShell -File "%~dp0Create-Zip.ps1" -target %~dp0..\Drops\Temp\PowerShellScriptRunner\ %~dp0..\Drops\newrelic-deployment-notifier.zip

RMDIR "%~dp0..\Drops\Temp\" /S /Q

PAUSE
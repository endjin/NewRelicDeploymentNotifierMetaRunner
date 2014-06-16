MKDIR %~dp0..\Drops
MKDIR %~dp0..\Drops\Temp\PowerShellRunner

XCOPY /E /Y "%~dp0..\Solutions\PowerShellRunner\*.*" "%~dp0..\Drops\Temp\PowerShellRunner"

7z a -tzip -mx0 "%~dp0..\Drops\Temp\PowerShellRunner\agent\nr_deployment_notifier.zip" "%~dp0..\Drops\Temp\PowerShellRunner\agent\**\*.*"

DEL "%~dp0..\Drops\Temp\PowerShellRunner\agent\*.xml"
RMDIR "%~dp0..\Drops\Temp\PowerShellRunner\agent\bin" /S /Q

7z a -tzip -mx0 "%~dp0..\Drops\newrelic-deployment-notifier.zip" "%~dp0..\Drops\Temp\**"

RMDIR "%~dp0..\Drops\Temp\" /S /Q
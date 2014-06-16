MKDIR %~dp0..\Drops
MKDIR %~dp0..\Drops\Temp\SimpleRunner

XCOPY /E /Y "%~dp0..\Solutions\SimpleRunner\*.*" "%~dp0..\Drops\Temp\SimpleRunner"

7z a -tzip -mx0 "%~dp0..\Drops\Temp\SimpleRunner\agent\nr_deployment_notifier.zip" "%~dp0..\Drops\Temp\SimpleRunner\agent\**\*.*"

DEL "%~dp0..\Drops\Temp\SimpleRunner\agent\*.xml"
RMDIR "%~dp0..\Drops\Temp\SimpleRunner\agent\bin" /S /Q

7z a -tzip -mx0 "%~dp0..\Drops\newrelic-deployment-notifier.zip" "%~dp0..\Drops\Temp\**"

RMDIR "%~dp0..\Drops\Temp\" /S /Q
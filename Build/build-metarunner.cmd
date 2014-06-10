MKDIR %~dp0..\Drops
MKDIR %~dp0..\Drops\Temp

XCOPY /E /Y "%~dp0..\Solutions\*.*" "%~dp0..\Drops\Temp\"

7z a "%~dp0..\Drops\Temp\agent\nr_deployment_notifier.zip" "%~dp0..\Drops\Temp\agent\**\*.*"

DEL "%~dp0..\Drops\Temp\agent\*.xml"
RMDIR "%~dp0..\Drops\Temp\agent\bin" /S /Q

7z a "%~dp0..\Drops\NewRelicDeploymentNotifier.zip" "%~dp0..\Drops\Temp\**"

RMDIR "%~dp0..\Drops\Temp\" /S /Q

PAUSE
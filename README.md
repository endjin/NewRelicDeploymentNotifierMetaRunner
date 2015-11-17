NewRelic Deployment Notifier MetaRunner
=======================================

A TeamCity MetaRunner to notify NewRelic that a new deployment has occurred.

More details about this MetaRunner are in the following blog post:

http://blog.jetbrains.com/teamcity/2014/06/a-step-by-step-guide-create-a-custom-teamcity-metarunner-to-notify-newrelic-that-a-new-deployment-has-occurred/

To build the MetaRunner - use Build\build-simplerunner.cmd, Build\build-powershellrunner.cmd for the PowerShell version that calls curl and Build\build-powershellscrptrunner.cmd for the version that uses Invoke-RestMethod rather than curl.

If you would like a cross platform alternative see https://github.com/surveysampling/NewRelicDeploymentNotifierMetaRunner/tree/gradle-build by https://github.com/ssi-josh-levesque

@HowardvRooijen | @endjin

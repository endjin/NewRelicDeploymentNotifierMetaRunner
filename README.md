NewRelic Deployment Notifier MetaRunner
=======================================

A TeamCity MetaRunner to notify NewRelic that a new deployment has occurred.

More details about this MetaRunner are in the following blog post:

http://blog.jetbrains.com/teamcity/2014/06/a-step-by-step-guide-create-a-custom-teamcity-metarunner-to-notify-newrelic-that-a-new-deployment-has-occurred/


## Building
This project uses [gradlew](https://docs.gradle.org/current/userguide/gradle_wrapper.html) to build, meaning you do not need to install any tools to perform a build.

### To build all projects:

```
./gradlew buildPlugin
```

Each project's resulting plugin zip will be found in `<project>/build/dist/`

### To build a specific project

```
./gradlew simple-runner:buildPlugin
```

The project's resulting plugin zip will be found in `<project>/build/dist/`

### To publish a plugin to your private Maven style repository (Artifactory, Nexus, etc)
1. Set mavenRepositoryUrl, mavenUsername  and mavenPassword in your ./gradle.properties
2. Run the publish

    ```
    ./gradlew simple-runner:publish
    ```

@HowardvRooijen | @endjin

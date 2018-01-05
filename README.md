# Quick and Dirty Maven Repository

Based on [Hosting Maven Repos on Github](https://cemerick.com/2010/08/24/hosting-maven-repos-on-github/).
This is a staging area for artifacts for projects that I am working on that are not ready for public exposure.

## Deploy jar packages

Deploy JGraph

```bash
./deploy-jgraph.sh
```

## Configure your project to use the repository

Add the following to the pom.xml file for your project.

```xml
<repositories>
    <repository>
        <id>babeloff</id>
        <url>https://github.com/babeloff/mvn-repo/raw/master/releases</url>
    </repository>
    <repository>
        <id>babeloff-snapshots</id>
        <url>https://github.com/babeloff/mvn-repo/raw/master/snapshots</url>
    </repository>
</repositories>
```


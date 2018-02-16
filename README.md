# Quick and Dirty Maven Repository

Based on [Hosting Maven Repos on Github](https://cemerick.com/2010/08/24/hosting-maven-repos-on-github/).
This is a staging area for artifacts for projects that I am working on that are not ready for public exposure.

## Deploy jar packages

If the version number changes then you will need to update the
script and create a new pom file as well as copying the
correct jar into the lib directory.

You will also need to add the files placed into
the releases directory into your git repository.

### Deploy JGraph

```bash
./scripts/jgraph-deploy.sh
```

### Deploy FQL

First you will need to copy the approprate jar file.
```bash
cp ../fql/target/fql-0.9-SNAPSHOT-maven-jar-with-dependencies.jar ./lib/fql-0.9-SNAPSHOT.jar
```

```bash
./scripts/jgraph-deploy.sh
./scripts/fql-deploy.sh
```


## Configure your project to use the repository

Add the following to the pom.xml file for your project.

For registering this repository with maven add the following to the pom.xml.
```maven
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

```gradle
repositories {
        mavenCentral()
        babeloff {
            url "https://github.com/babeloff/mvn-repo/raw/master/releases"
        }
        babeloff-snapshots {
            url "https://github.com/babeloff/mvn-repo/raw/master/snapshots"
        }
    }
```

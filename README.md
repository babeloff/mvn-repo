# Quick and Dirty Maven Repository

Based on [Hosting Maven Repos on Github](https://cemerick.com/2010/08/24/hosting-maven-repos-on-github/).
This is a staging area for artifacts for projects that I am working on that are not ready for public exposure.

## Packages provided

### The **aql-server-brass** https://github.com/babeloff/aql-server-brass

As a Gradle dependency.
```gradle
compile group: 'babeloff', name: 'aql-server-brass', version: '2018.03.20'
```

This is run as a java executable jar.
```java
java -jar ./<where-ever>/aql-server-brass-<version>.jar
```

This receives and processes messages as described here...
https://github.com/babeloff/aql-server-brass

### The FQL IDE and library

Boot or Leiningen
```boot
[net.catdata/fql "0.9-SNAPSHOT"]
```

### The JGRAPH Library

Maven
```mvn
<project ...>
   ...
     <dependencies>
        ...
        <dependency>
            <groupId>jgraph</groupId>
            <artifactId>jgraph</artifactId>
            <version>5.12.3.2</version>
        </dependency>
        ...
     </dependencies>
   ...
</project>
```

## Configure your project to use the repository

Add the following to the pom.xml file for your project.

For registering this repository with maven add the following to the pom.xml.
```maven
<project ...>
   ...
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
   ...
</project>
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


## Deploy jar packages

If the version number changes then you will need to update the
script and create a new pom file as well as copying the
correct jar into the lib directory.

You will also need to add the files placed into
the releases directory into your git repository.

### Deploy the aql-server-brass

First you will need to copy the approprate jar file.
```bash
cp ../target/aql-brass-server-2018.03.20.jar ./lib/aql-server-brass-2018.03.20.jar
```

```bash
./scripts/aql-brass-server-deploy.sh
```

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
./scripts/fql-deploy.sh
```

#!/bin/bash

mvn deploy:deploy-file \
    -Durl=http://immortals.isis.vanderbilt.edu:8081/repository/maven-releases \
    -DrepositoryId=nexus \
    -Dfile=./lib/jgraph-5.12.3.2.jar \
    -DgroupId=jgraph \
    -DartifactId=jgraph \
    -Dversion=5.12.3.2 \
    -Dpackaging=jar \
    -DgeneratePom=true \
    -DgeneratePom.description="The JGraph library needed by EASIK" \
    -DuniqueVersion=true

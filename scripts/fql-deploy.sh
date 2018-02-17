#!/bin/bash

cp ../fql/target/fql-0.9-SNAPSHOT-maven-jar-with-dependencies.jar \
    ./lib/fql-0.9-SNAPSHOT.jar

mvn deploy:deploy-file \
    -Durl=file:./snapshots \
    -DrepositoryId=snapshots \
    -Dfile=./lib/fql-0.9-SNAPSHOT.jar \
    -DgroupId=net.catdata \
    -DartifactId=fql \
    -Dversion=0.9-SNAPSHOT \
    -Dpackaging=jar \
    -DgeneratePom=true \
    -DgeneratePom.description="The AQL Compiler Library" \
    -DuniqueVersion=true

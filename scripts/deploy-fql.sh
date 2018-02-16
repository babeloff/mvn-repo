#!/bin/bash

mvn deploy:deploy-file \
    -Durl=file:./releases \
    -DrepositoryId=releases \
    -Dfile=./lib/fql-0.9-SNAPSHOT.jar \
    -DgroupId=net.catdata \
    -DartifactId=fql \
    -Dversion=0.9-SNAPSHOT \
    -Dpackaging=jar \
    -DgeneratePom=true \
    -DgeneratePom.description="The AQL Compiler Library" \
    -DuniqueVersion=true

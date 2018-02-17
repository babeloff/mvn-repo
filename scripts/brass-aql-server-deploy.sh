#!/bin/bash


cp ../aql-server-brass/aql/target/aql-server-2018.02.10.jar \
    ./lib/brass-aql-server-2018.02.10.jar

mvn deploy:deploy-file \
    -Durl=file:./releases \
    -DrepositoryId=releases \
    -Dfile=./lib/brass-aql-server-2018.02.10.jar \
    -DgroupId=babeloff \
    -DartifactId=brass-aql-server \
    -Dversion=2018.02.10 \
    -Dpackaging=jar \
    -DgeneratePom=true \
    -DgeneratePom.description="The BRASS AQL server" \
    -DuniqueVersion=true

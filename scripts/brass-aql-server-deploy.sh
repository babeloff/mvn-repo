#!/bin/bash

VERSION="2018.03.16"
SNAPSHOT=`date +%Y%m%d`

cp ../aql-server-brass/aql/target/brass-aql-server-${VERSION}.jar \
    ./lib/brass-aql-server-${VERSION}.jar

mvn deploy:deploy-file \
    -Durl=file:./releases \
    -DrepositoryId=releases \
    -Dfile=./lib/brass-aql-server-${VERSION}.jar \
    -DgroupId=babeloff \
    -DartifactId=brass-aql-server \
    -Dversion=${VERSION} \
    -Dpackaging=jar \
    -DgeneratePom=true \
    -DgeneratePom.description="The BRASS AQL server" \
    -DuniqueVersion=true

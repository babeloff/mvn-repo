#!/bin/bash

VERSION="2018.03.20"
SNAPSHOT=`date +%Y%m%d`

cp ../aql-server-brass/aql/target/aql-brass-server-${VERSION}.jar \
    ./lib/aql-brass-server-${VERSION}.jar

mvn deploy:deploy-file \
    -Durl=file:./releases \
    -DrepositoryId=releases \
    -Dfile=./lib/aql-brass-server-${VERSION}.jar \
    -DgroupId=babeloff \
    -DartifactId=aql-brass-server \
    -Dversion=${VERSION} \
    -Dpackaging=jar \
    -DgeneratePom=true \
    -DgeneratePom.description="The BRASS AQL server" \
    -DuniqueVersion=true

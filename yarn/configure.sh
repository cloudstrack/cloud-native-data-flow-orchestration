#!/bin/sh

[ -z "$SCDF_HOME" ] && SCDF_HOME="../../spring-cloud/spring-cloud-dataflow"
echo SCDF_HOME: $SCDF_HOME

cd $SCDF_HOME
find . -name "*.yml" -exec sed -i '' 's/localhost/borneo/' {} +
git status

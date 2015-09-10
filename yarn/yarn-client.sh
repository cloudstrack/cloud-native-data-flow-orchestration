#!/bin/sh

[ -z "$SCDF_HOME" ] && SCDF_HOME="../../spring-cloud/spring-cloud-dataflow"
echo SCDF_HOME: $SCDF_HOME

java -jar $SCDF_HOME/spring-cloud-dataflow-yarn/spring-cloud-dataflow-yarn-client/target/spring-cloud-dataflow-yarn-client-1.0.0.BUILD-SNAPSHOT.jar shell

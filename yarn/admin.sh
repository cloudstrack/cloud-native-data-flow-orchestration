#!/bin/sh

[ -z "$SCDF_HOME" ] && SCDF_HOME="../../spring-cloud/spring-cloud-dataflow"

echo SCDF_HOME: $SCDF_HOME

java -Dspring.profiles.active=yarn \
-Ddataflow.yarn.app.appmaster.path=\
$SCDF_HOME/spring-cloud-dataflow-yarn/spring-cloud-dataflow-yarn-appmaster/target \
-Ddataflow.yarn.app.container.path=\
$SCDF_HOME/spring-cloud-dataflow-yarn/spring-cloud-dataflow-yarn-container/target \
-jar $SCDF_HOME/spring-cloud-dataflow-admin/target/spring-cloud-dataflow-admin-1.0.0.BUILD-SNAPSHOT.jar

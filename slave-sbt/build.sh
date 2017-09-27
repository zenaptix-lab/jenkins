#!/bin/bash
set -e

docker build -t docker-registry-default.zenshift.io/jenkins/jenkins-sbt .
docker push docker-registry-default.zenshift.io/jenkins/jenkins-sbt
oc label imagestream jenkins-sbt role=jenkins-slave
oc annotate imagestream jenkins-sbt role=jenkins-slave

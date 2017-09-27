#!/bin/bash
docker build -t docker-registry-default.zenshift.io/jenkins/jenkins-sbt .
docker push docker-registry-default.zenshift.io/jenkins/jenkins-sbt
oc label jenkins-sbt role=jenkins-slave
oc annotate jenkins-sbt role=jenkins-slave

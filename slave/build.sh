#!/bin/bash
docker build -t docker-registry-default.zenshift.io/openshift/jenkins-slave .
docker push docker-registry-default.zenshift.io/openshift/jenkins-slave

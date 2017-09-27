#!/bin/bash
set -e

docker build -t docker-registry-default.zenshift.io/openshift/jenkins:zen .
docker push docker-registry-default.zenshift.io/openshift/jenkins:zen

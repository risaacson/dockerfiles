#!/usr/bin/env bash

BASE_IMAGE_NAME=risaacson/openjdk-6-jre-ubuntu-trusty
docker build -t ${BASE_IMAGE_NAME} .
JAVA_VERSION=$( docker run -it --rm ${BASE_IMAGE_NAME} /usr/bin/java -version | grep 'java version' | awk '{print $3}' | cut -d\" -f2 )
docker build -t "${BASE_IMAGE_NAME}:${JAVA_VERSION}" .

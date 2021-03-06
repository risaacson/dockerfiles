#!/usr/bin/env bash

BASE_IMAGE_NAME=risaacson/openjdk-8-jre-ubuntu-precise
docker build -t ${BASE_IMAGE_NAME} .
JAVA_VERSION=$( docker run -it --rm ${BASE_IMAGE_NAME} /usr/bin/java -version | grep 'java version' | awk '{print $3}' | cut -d\" -f2 )
docker build -t "${BASE_IMAGE_NAME}:${JAVA_VERSION}" .

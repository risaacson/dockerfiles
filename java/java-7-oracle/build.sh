#!/usr/bin/env bash

set -x

BASE_DIR=`pwd`
for x in $( find * -maxdepth 0 -mindepth 0 -type d ); do
  echo ${x}
  cd ${x} && ./build.sh
  cd ${BASE_DIR}
done

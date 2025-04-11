#!/usr/bin/env bash

DOCKER_DIR=$(realpath $(dirname $0))


cd ${DOCKER_DIR}
grep image docker-compose.yaml | awk '{print $2}' | grep -v image: | while read image; do echo $image; docker pull $image; done

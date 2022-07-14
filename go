#!/bin/sh -ex

TAG=7.1.1
IMAGE=couchbase

docker build -t ${IMAGE}:${TAG} .
if [ "$1" = "--publish" ]
then
  docker push ${IMAGE}:$TAG
fi

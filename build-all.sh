#!/bin/bash
IMAGE=tomcat
ACCOUNT=infrabricks
TAG_SHORT=8
TAG_LONG=8.0.33
docker pull java:8-jre
docker pull java:8-jdk
docker build -t="${ACCOUNT}/$IMAGE" .
DATE=`date +'%Y%m%d%H%M'`
IID=$(docker inspect -f "{{.Id}}" ${ACCOUNT}/$IMAGE)
docker tag $IID ${ACCOUNT}/$IMAGE:$DATE
docker tag $IID ${ACCOUNT}/$IMAGE:$TAG_SHORT
docker tag $IID ${ACCOUNT}/$IMAGE:$TAG_LONG

docker build -t="${ACCOUNT}/${IMAGE}:${TAG_SHORT}-dev" -f Dockerfile.dev .
IID=$(docker inspect -f "{{.Id}}" ${ACCOUNT}/$IMAGE:${TAG_SHORT}-dev)
docker tag $IID ${ACCOUNT}/${IMAGE}:${TAG_LONG}-dev

docker build -t="${ACCOUNT}/${IMAGE}:${TAG_SHORT}-onbuild" -f Dockerfile.onbuild .
IID=$(docker inspect -f "{{.Id}}" ${ACCOUNT}/$IMAGE:${TAG_SHORT}-onbuild)
docker tag $IID ${ACCOUNT}/${IMAGE}:${TAG_LONG}-onbuild

docker build -t="${ACCOUNT}/${IMAGE}:${TAG_SHORT}-tcnative" -f Dockerfile.tcnative-build .
IID=$(docker inspect -f "{{.Id}}" ${ACCOUNT}/$IMAGE:${TAG_SHORT}-tcnative)
docker tag $IID ${ACCOUNT}/${IMAGE}:${TAG_LONG}-tcnative

docker build -t="${ACCOUNT}/${IMAGE}:${TAG_SHORT}-volume" -f Dockerfile.volume .
IID=$(docker inspect -f "{{.Id}}" ${ACCOUNT}/$IMAGE:${TAG_SHORT}-volume)
docker tag $IID ${ACCOUNT}/${IMAGE}:${TAG_LONG}-volume

docker build -t="${ACCOUNT}/${IMAGE}:${TAG_SHORT}-alpine" -f Dockerfile.alpine .
IID=$(docker inspect -f "{{.Id}}" ${ACCOUNT}/$IMAGE:${TAG_SHORT}-alpine)
docker tag $IID ${ACCOUNT}/${IMAGE}:${TAG_LONG}-alpine

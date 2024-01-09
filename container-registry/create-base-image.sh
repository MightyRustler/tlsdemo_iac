#!/bin/bash

# create-base-image.sh
# build and push the base container image to the container registry
#
# in this instance, DockerHub is used
# note: DockerHub must be available (login via: "docker login")

# construct the base container image name
dockerHubAct="kevinjswinton"
dockerHubRpo="tlsdemo"
dockerHubImg="web-base"
imgDatestamp=$(date '+%Y%m%d')
dockerHubImg=$dockerHubAct/$dockerHubRpo:$dockerHubImg-$imgDatestamp

# build and push the base container image
echo "[INFO] : Will build and push : $dockerHubImg"
docker build . --no-cache --tag $dockerHubImg
docker push                     $dockerHubImg

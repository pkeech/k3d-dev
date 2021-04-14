#!/bin/bash

## SOURCE COMMON FEATURES
source "scripts/common.sh"

#echo -e "${INFO_COLOR}***** Output Testing ****${NO_COLOR}"

#echo "${DIR}"
#echo -e "${OK_COLOR}[OK]${NO_COLOR}"
#echo -e "${INFO_COLOR}[INFO]${NO_COLOR}"
#echo -e "${WARN_COLOR}[WARN]${NO_COLOR}"
#echo -e "${ERROR_COLOR}[ERROR]${NO_COLOR}"

## SECTION: CLEAN UP DOCKER
echo -e "${INFO_COLOR}***** Cleaning up Docker Environment ****${NO_COLOR}"

docker rm -f $(docker ps -qa)
docker network prune -f
docker volume prune -f
docker system prune -a -f

## SECTION: PULL DOCKER IMAGES
echo -e "${INFO_COLOR}***** Pulling Required Docker Images ****${NO_COLOR}"

docker pull rancher/k3s:v1.20.0-k3s2
docker pull rancher/k3d-proxy:v4.1.0
docker pull rancher/k3d-tools:v4.1.0
docker pull python:3.7-slim
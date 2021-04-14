#!/bin/bash

## SOURCE COMMON FEATURES
source "scripts/common.sh"

## DEFINE ARGUEMENTS (FOR EASE OF READING)
CONFIG_FILE=$1
CLUSTER_NAME=$2


## SECTION: CREATE CLUSTER
section "Create Development Cluster from Config File"
printf "${INFO_COLOR}********************${NO_COLOR}\n$(cat $CONFIG_FILE)\n${INFO_COLOR}********************${NO_COLOR}\n"

info_pause_exec "Create Development Cluster" "k3d cluster create $CLUSTER_NAME --config $CONFIG_FILE"


## SECTION: VALIDATE CLUSTER DEPLOYMENT
section "Access the Cluster"

info_pause_exec "List clusters" "k3d cluster list"
info_pause_exec "Use kubectl to checkout the nodes" "kubectl get nodes"

## SECTION: Enable Tilt
section "Start Tilt"
info_pause_exec "Starting Tilt (legacy terminal mode)" "tilt up --legacy"

## SECTION: Script Complete
section "The End"

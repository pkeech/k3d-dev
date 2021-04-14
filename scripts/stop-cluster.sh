#!/bin/bash

## SOURCE COMMON FEATURES
source "scripts/common.sh"

## DEFINE ARGUEMENTS (FOR EASE OF READING)
CLUSTER_NAME=$1

## SECTION: STOP CLUSTER
section "Stopping $CLUSTER_NAME Cluster"
info_pause_exec "Stopping $CLUSTER_NAME Cluster" "k3d cluster stop $CLUSTER_NAME"

## SECTION: Script Complete
section "The End"

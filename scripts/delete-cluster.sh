#!/bin/bash

## SOURCE COMMON FEATURES
source "scripts/common.sh"

## DEFINE ARGUEMENTS (FOR EASE OF READING)
CLUSTER_NAME=$1

## SECTION: DELETE CLUSTER
section "Deleting $CLUSTER_NAME Cluster"
info_pause_exec "Deleting $CLUSTER_NAME Cluster" "k3d cluster delete $CLUSTER_NAME"

## SECTION: Script Complete
section "The End"

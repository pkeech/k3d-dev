#!/bin/bash

## SOURCE COMMON FEATURES
source "scripts/common.sh"

## DEFINE ARGUEMENTS (FOR EASE OF READING)
CLUSTER_NAME=$1

## SECTION: RESTART CLUSTER
section "Restarting Development Cluster"
info_pause_exec "Restarting Development Cluster" "k3d cluster start $CLUSTER_NAME"

## SECTION: RESTARTING TILT
section "Starting Tilt"
info_pause_exec "Starting Tilt (legacy terminal mode)" "tilt up --legacy"

## SECTION: Script Complete
section "The End"

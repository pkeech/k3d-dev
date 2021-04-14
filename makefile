# --------------------------------------------------------------------
# Description: This makefile will deploy K3D clusters for development
# Author(s): Peter Keech
# 
# This software may be modified and distributed under the terms of the
# MIT license. See the LICENSE file for details.
# --------------------------------------------------------------------

## For MakeFile Purposes
## https://stackoverflow.com/questions/2145590/what-is-the-purpose-of-phony-in-a-makefile/2145605
.PHONY: run prep

## DEFINE VARIALBE AND DEFAULTS
configfile = ./clusters/example.yaml
clustername = "example"
tiltfile = "./tilt/example.Tiltfile"

## HELP FILE
help:
	@echo ''
	@echo 'Description: This makefile will aid in the creation and destruction of k3d clusters.'
	@echo ''
	@echo 'Requirement(s): Docker, K3D, Tilt, Make'
	@echo ''
	@echo 'Usage: make [ARGUMENTS]'
	@echo ''
	@echo 'Arguments:'
	@echo '  prep    	Clean Up Local Docker Instance & Pull K3D Docker Images'
	@echo '  create-cluster  	Create K3D Cluster'
	@echo '  delete-cluster  	Destroy K3D Cluster'
	@echo '  stop-cluster  	Stop K3D Cluster'
	@echo '  restart-cluster  	Restart K3D Cluster'
	@echo ''

## PREP LOCAL MACHINES
prep:
	scripts/prep.sh

## CREATE CLUSTER
create-cluster:
	scripts/create-cluster.sh $(configfile) $(clustername) $(tiltfile)

## DELETE CLUSTER
delete-cluster:
	scripts/delete-cluster.sh $(clustername)

## STOP CLUSTER
stop-cluster:
	scripts/stop-cluster.sh $(clustername)

## RESTART CLUSTER
restart-cluster:
	scripts/restart-cluster.sh $(clustername)
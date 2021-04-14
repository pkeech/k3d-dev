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
configfile = ./clusters/dev.yaml
clustername = "dev"

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
	@echo '  create-dev  	Create K3D Development Cluster'
	@echo '  delete-dev  	Destroy K3D Development Cluster'
	@echo ''

## PREP LOCAL MACHINES
prep:
	scripts/prep.sh

## CREATE DEVELOPMENT CLUSTER
create-dev:
	scripts/cluster-dev.sh $(configfile) $(clustername)

## DELETE DEVELOPMENT CLUSTER
delete-dev:
	scripts/delete-dev.sh $(clustername)

## STOP DEVELOPMENT CLUSTER
stop-dev:
	scripts/stop-dev.sh $(clustername)

## RESTART DEVELOPMENT CLUSTER
restart-dev:
	scripts/restart-dev.sh $(clustername)
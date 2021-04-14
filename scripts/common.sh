#!/bin/bash

## DEFINE OUTPUT FORMAT
NO_COLOR='\033[0m'
INFO_COLOR='\033[0;36m'
OK_COLOR='\033[0;32m'
WARN_COLOR='\033[0;33m'
ERROR_COLOR='\033[0;31m'

## https://github.com/iwilltry42/k3d-demo/blob/main/scripts/common.sh
RED='\033[1;31m'
GRN='\033[1;32m'
YEL='\033[1;33m'
BLU='\033[1;34m'
WHT='\033[1;37m'
MGT='\033[1;95m'
CYA='\033[1;96m'
END='\033[0m'
BLOCK='\033[1;37m'

## GET CURRENT DIRECTORY
DIR=$(pwd)


# wait for Enter key to be pressed
function pause(){
  read -rp "[Enter] Continue..."
}

# show info text and command, wait for enter, then execute and print a newline
function info_pause_exec() {
  step "$1"
  read -rp $'\033[1;37m#\033[0m'" Command: "$'\033[1;96m'"$2"$'\033[0m'" [Enter]"
  exe $2
  echo ""
}

# show command and execute it
exe() { echo "\$ ${@/eval/}" ; "$@" ; } 

# highlight a new section
section() {
  echo ""
  log "***** Section: ${MGT}$1${END} *****"; 
  echo ""
}

# highlight the next step
step() { log "Step: ${BLU}$1${END}"; }

# output a "log" line with bold leading >>>
log() { >&2 printf "${BLOCK}#${END} $1\n"; }
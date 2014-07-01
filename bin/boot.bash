#!/usr/bin/env bash

set -o nounset
set -o errexit

#DEBUG=1

SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
NORMAL=$(tput sgr0)
GREEN=$(tput setaf 2; tput bold)
YELLOW=$(tput setaf 3)
RED=$(tput setaf 1)


function red() {
  echo -e "$RED$*$NORMAL"
}

function green() {
  echo -e "$GREEN$*$NORMAL"
}

function yellow() {
  echo -e "$YELLOW$*$NORMAL"
}

function log {
  local prefix="[$(date +%Y/%m/%d\ %H:%M:%S)]: "
  echo "${prefix} $@" >&2
}
# eg, log "WARN" "Warning here"

function debug() { ((DEBUG)) && echo ">>> $*"; }


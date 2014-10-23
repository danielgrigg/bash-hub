#!/bin/sh

if [[ -z $1 ]]; then
  curl -sS http://ci.int.covata.com/api/json?pretty=true | jq -r ".jobs[] | .name"
else
  curl -sS http://ci.int.covata.com/api/json?pretty=true | jq -r ".jobs[] | select(.name==\"$1\")"
fi

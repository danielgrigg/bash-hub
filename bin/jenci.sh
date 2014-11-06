#!/usr/bin/env bash

set -o errexit

if [[ ! $(type -p jq) ]]; then
  if [[ $(type -p brew) ]]; then
    sudo brew install jq
  elif [[ $(type -p port) ]]; then
    sudo port install jq
  else
    curl -o - http://stedolan.github.io/jq/download/source/jq-1.4.tar.gz | tar xz
    cd jq-1.4
    ./configure && make && sudo make install
  fi
fi

function rocket {
  echo -e "\xf0\x9f\x9a\x80"
}

function tick { 
  echo -e "\xe2\x9c\x85"
}

function cross { 
  echo -e "\xe2\x9d\x8c"
}

function job_status { 
  curl -sS http://ci.int.covata.com/api/json?pretty=true | jq -r ".jobs[] | select(.name==\"$1\") | .color"
}

function job_emoji {
  color=$(job_status "$1")
  if [[ $color = blue ]]; then
    tick
  elif [[ $color = red ]]; then
    cross
  elif [[ $color = *_anime ]]; then
    rocket
  else 
    echo ???
  fi
}

# poll them all!
if [[ "$1" < 1 ]]; then
  echo "Usage: jenci.sh <jenkins-uri> [job-name]"
  exit
fi
jenkins_uri="$1"
job="$2"

if [[ -z "$job" ]]; then
  jobs=$(curl -sS "$jenkins_uri/api/json?pretty=true" | jq -r ".jobs[] | .name")

  for j in $jobs; do
    echo "$j $(job_emoji $j)"
  done
  exit
fi

# poll a job
while (true); do
  clear
  echo "$job $(job_emoji $job)"
  sleep 5
done

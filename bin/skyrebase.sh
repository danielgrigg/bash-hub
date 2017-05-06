#!/usr/bin/env bash

if [[ -z $1 ]]; then 
  echo "usage: skyrebase <branch>"
  exit 1
fi

git checkout $1 && git pull --ff-only && git checkout - && git rebase $1


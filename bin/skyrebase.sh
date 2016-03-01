#!/usr/bin/env bash

git checkout develop && git pull --ff-only && git checkout - && git rebase develop


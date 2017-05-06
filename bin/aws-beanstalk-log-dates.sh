#!/usr/bin/env bash

for x in _var_log*; do  
  y=${x##*-}
  z=$(date -u -r $y)
  echo "$x -> $z"
done

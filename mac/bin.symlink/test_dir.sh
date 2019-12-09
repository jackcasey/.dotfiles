#!/usr/bin/env bash

ret=1
diffs=$(git -C $1 status --porcelain 2>/dev/null)

if [ $? -eq 0 ]; then
  if [ -z "$diffs" ]; then
    ret=0
  fi
fi
exit $ret


#!/bin/bash
source ./functions.sh

# set up karabiner settings if installed
command -v /usr/local/bin/karabiner >/dev/null 2>&1 || { echo >&2 "  Please install karabiner (https://pqrs.org/osx/karabiner/) to your path to run this script."; exit 1; }

file=`pwd`/mac/private.xml
homefile="$HOME/Library/Application Support/Karabiner/private.xml"
safelink $file $homelink

echo -n "    Setting up programmer key mappings with Karabiner "
# This is the karabiner export file
bash ./mac/karabiner_export.sh

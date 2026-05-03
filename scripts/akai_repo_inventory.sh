#!/bin/zsh
set -euo pipefail

ROOT="/Users/nickgonzales/Documents/Aurekai"
OSS="/Users/nickgonzales/Projects/akai-oss"
PROJECTS="/Users/nickgonzales/Projects"

echo "Akai workspace inventory"
echo

echo "Vault top-level code dirs:"
find "$ROOT/10-Code" -mindepth 1 -maxdepth 1 -type d | wc -l | awk '{print "  " $1}'

echo "akai-oss cmd entrypoints:"
find "$OSS/cmd" -mindepth 1 -maxdepth 1 -type d | wc -l | awk '{print "  " $1}'

echo "Pages and akai repos in Projects:"
find "$PROJECTS" -mindepth 1 -maxdepth 1 -type d \( -name 'pages-*' -o -name 'akai-*' \) | wc -l | awk '{print "  " $1}'

echo
echo "akai-oss command list:"
find "$OSS/cmd" -mindepth 1 -maxdepth 1 -type d | sed 's#^.*/##' | sort

echo
echo "Vault 10-Code list:"
find "$ROOT/10-Code" -mindepth 1 -maxdepth 1 -type d | sed 's#^.*/##' | sort

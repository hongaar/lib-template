#!/bin/bash

# Install dependencies
yarn

# Detect name of package from directory
name=`basename $(dirname "$(readlink -f "$0")")`
echo Detected package name: $name

# Replace all occurences of lib-template with $name
find . ( -type d -name .git -prune ) -o -type f -print0 | xargs -0 sed -i "s/lib-template/$name/g"

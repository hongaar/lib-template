#!/bin/bash

# Install dependencies
yarn

# Detect name of package from directory
name=`basename $(dirname "$(readlink -f "$0")")`
echo Updating package name to: $name

# Remove old README.md and replace with README.template.md
mv -f README.template.md README.md

# Replace all occurences of test123 with $name
git grep -lz 'test123' | xargs -0 sed -i "s/test123/$name/g"
git add .
git commit -m "chore: set package name to $name"

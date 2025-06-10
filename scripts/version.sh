#!/bin/bash

# Script for update package version in brick.yaml

echo "Updating package version in brick.yaml"

newVersion=$(grep '^version: [0-9]\+.[0-9]\+.[0-9]\+.*$' pubspec.yaml | awk '{print $2}')
brickFile="brick.yaml"

# Use 's' (substitute) command instead of 'c' (change)
# This finds the line starting with 'version:' and replaces the entire line.
sed -i '' "s/^version:.*/version: $newVersion/" "$brickFile"
git add "$brickFile"

echo "brick.yaml updated"

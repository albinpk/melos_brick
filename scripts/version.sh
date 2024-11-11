#!/bin/bash

# Script for update package version in brick.yaml

echo "Updating package version in brick.yaml"

newVersion=$(grep '^version: [0-9]\+.[0-9]\+.[0-9]\+.*$' pubspec.yaml | awk '{print $2}')
brickFile="brick.yaml"
sed -i "/version/c\version: $newVersion" $brickFile
git add $brickFile

echo "brick.yaml updated"

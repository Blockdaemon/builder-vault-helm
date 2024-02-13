#!/bin/bash

# Directory containing values files
VALUES_DIR=$1

# Image repository and tag
REPO=$2
TAG=$3

# Loop through each values file in the directory
for VALUES_FILE in "$VALUES_DIR"/*.yaml; do
  # Use sed to update the repository and tag
  sed -i "s|repository:.*|repository: $REPO|g" "$VALUES_FILE"
  sed -i "s|tag:.*|tag: \"$TAG\"|g" "$VALUES_FILE"
done
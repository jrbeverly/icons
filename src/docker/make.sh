#!/bin/sh
set -e

# Variables
#
# Build variables for directories.
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"

BASENAME="${DIR##*/}"
TARGET_DIR="${DIR}/target"
COLOR_FILE="${DIR}/colours.txt"

default_color="#000000"

# Vector Graphics
#
# Construct an SVG for each color variant.
mkdir -p ${TARGET_DIR}

while read line
do
  name="$(echo $line | cut -d' ' -f1)"
  color="$(echo $line | cut -d' ' -f2)"
  echo "Generating icon '${name}'"

  sed "s/${default_color}/#${color}/g" "${DIR}/icon.svg" > "${TARGET_DIR}/${name}.svg"
done < ${COLOR_FILE}

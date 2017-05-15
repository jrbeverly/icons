#!/bin/sh
set -ex

# Variables
#
# Build variables for directories.
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"

BASENAME="${DIR##*/}"
OUTPUT_DIR="${OUTPUT_DIR:-${DIR}/output}"
CONTENT_DIR="${OUTPUT_DIR}/${BASENAME}"
TARGET_DIR="${DIR}/bin"
COLOR_FILE="${DIR}/colours.txt"

# Local variables
default_color="#000000"

# Vector Graphics
#
# Construct an SVG for each color variant.
mkdir -p ${OUTPUT_DIR} ${CONTENT_DIR} ${TARGET_DIR}
while read line
do
  name="$(echo $line | cut -d' ' -f1)"
  color="$(echo $line | cut -d' ' -f2)"
  directory="${CONTENT_DIR}/${name}"

  mkdir -p ${directory}
  sed "s/${default_color}/#${color}/g" "${DIR}/icon.svg" > "${TARGET_DIR}/icon.svg"
  rsvg-convert -h 200 -f svg "${TARGET_DIR}/icon.svg" > "${directory}/icon.svg"
  rsvg-convert -h 200 -f png "${TARGET_DIR}/icon.svg" > "${directory}/icon.png"
  rsvg-convert -h 480 -f png "${TARGET_DIR}/icon.svg"> "${directory}/icon-480.png"
  rsvg-convert -h 720 -f png "${TARGET_DIR}/icon.svg" > "${directory}/icon-720.png"
  rsvg-convert -h 1080 -f png "${TARGET_DIR}/icon.svg" > "${directory}/icon-1080.png"
done < ${COLOR_FILE}

rm -rf ${TARGET_DIR}
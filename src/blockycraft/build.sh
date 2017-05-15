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
ICON_DIR="${CONTENT_DIR}/icon"

# Rasterized
#
# Rasterizes the scalable vector graphics.
mkdir -p ${OUTPUT_DIR} ${CONTENT_DIR} ${ICON_DIR}

rsvg-convert -h 200 -f svg "${DIR}/icon.svg" > "${ICON_DIR}/icon.svg"
rsvg-convert -h 200 -f png "${DIR}/icon.svg" > "${ICON_DIR}/icon.png"
rsvg-convert -h 480 -f png "${DIR}/icon.svg"> "${ICON_DIR}/icon-480.png"
rsvg-convert -h 720 -f png "${DIR}/icon.svg" > "${ICON_DIR}/icon-720.png"
rsvg-convert -h 1080 -f png "${DIR}/icon.svg" > "${ICON_DIR}/icon-1080.png"
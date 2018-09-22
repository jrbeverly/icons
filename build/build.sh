#!/bin/sh
set -e

echo "HI"
exit
# Variables
#
# Variables of the script.
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"
ROOT_DIR="$(dirname $DIR)"
OUTPUT_DIR="${ROOT_DIR}/dist"

# Rasterizing
#
# Rasterizes the scalable vector graphics.
rm -rf $OUTPUT_DIR

cd "${ROOT_DIR}/src"
for dir in *
do
  test -d "$dir" || continue
  
  (
    cd $dir

    ICON_DIR="${OUTPUT_DIR}/${dir}"
    mkdir -p "${ICON_DIR}"

    rsvg-convert -h 200 -f svg "icon.svg" > "${ICON_DIR}/icon.svg"
    rsvg-convert -h 200 -f png "icon.svg" > "${ICON_DIR}/icon.png"
    rsvg-convert -h 480 -f png "icon.svg"> "${ICON_DIR}/icon-480.png"
    rsvg-convert -h 720 -f png "icon.svg" > "${ICON_DIR}/icon-720.png"
    rsvg-convert -h 1080 -f png "icon.svg" > "${ICON_DIR}/icon-1080.png"

    exit
  )
done

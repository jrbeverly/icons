#!/bin/sh
set -ex

# Variables
#
# Variables of the script.
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"
ROOT_DIR="$(dirname $DIR)"
OUTPUT_DIR="${ROOT_DIR}/output"
MAKE="${DIR}/make.sh"

# Rasterizing
#
# Rasterizes the scalable vector graphics.
rm -rf $OUTPUT_DIR

export OUTPUT_DIR
cd "${ROOT_DIR}/src"
for dir in *
do
  test -d "$dir" || continue
  
  ( (test -f "${dir}/build.sh" && bash "${dir}/build.sh") || true )
done

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

cd src/
for dir in *
do
  test -d "$dir" || continue
  
  cd "$dir/"

  ( (test -f "build.sh" && bash build.sh) || true )

  mkdir -p target/
  for filename in *.svg 
  do    
    cp $filename target/
  done
  ( cd target/ && for filename in *.svg; do sh $MAKE $OUTPUT_DIR $dir $filename; done )

  rm -rf target/
  cd ..
done
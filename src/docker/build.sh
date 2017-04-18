#!/bin/sh
set -e

# Variables
#
# Set of variables for the build script
build_dir="target"
default_color="#000000"

# Vector Graphics
#
# Construct an SVG for each color variant.
mkdir -p $build_dir

while read line
do
  name="$(echo $line | cut -d' ' -f1)"
  color="$(echo $line | cut -d' ' -f2)"

  sed "s/${default_color}/#${color}/g" icon.svg > $build_dir/${name}.svg
done < colours.txt
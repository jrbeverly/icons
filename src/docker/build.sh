#!/bin/bash
set -e

# Variables
#
# Set of variables for the build script
BLACK="#000000"
COLORS=("00bcff" "78b900" "5181b7" "52b54b" "428bca" "000000" "c2b898" "2c5aa0" "ff9100" "1d2d44" "960018" "E60026")
NAME=(lightblue green navy lime spanishblue black desert blue orange darkblue magenta carmine red)

build_dir="target"
target_dir="../../bin/docker/"

# SVG
#
# Construct an SVG for each color variant.
mkdir -p $build_dir $target_dir

length=${#COLORS[@]}
for (( i = 0; i < ${length}; i++));
do
  sed "s/${BLACK}/#${COLORS[$i]}/g" icon.svg > ${build_dir}/${NAME[$i]}.svg
done

# Rasterize
#
# Rasterize the images.
for file in $build_dir/*.svg; do
  filename=${file}
  name=$(echo $filename | cut -f 1 -d '.')

  rsvg-convert -h 200 -f svg $filename > ${name}-min.svg
  rsvg-convert -h 200 -f png $filename > ${name}.png
  rsvg-convert -h 480 -f png $filename > ${name}-480.png
  rsvg-convert -h 1000 -f png $filename > ${name}-1000.png
done

mv ${build_dir}/* $target_dir
rmdir $build_dir
#!/bin/sh
set -ex

# Parameters
#
# Parameters of the script.
target=$1
project=$2
filename=$3

# Variables
#
# Variables of the script.
name=$(echo $filename | cut -f 1 -d '.')
build_dir="$name"
target_dir="$target/$project"

# Rasterized
#
# Rasterizes the scalable vector graphics.
mkdir -p ${build_dir} $target_dir/${name}
rsvg-convert -h 200 -f svg $filename > ${build_dir}/${name}.svg
rsvg-convert -h 200 -f png $filename > ${build_dir}/${name}.png
rsvg-convert -h 480 -f png $filename > ${build_dir}/${name}-480.png
rsvg-convert -h 720 -f png $filename > ${build_dir}/${name}-720.png
rsvg-convert -h 1080 -f png $filename > ${build_dir}/${name}-1080.png

mv ${build_dir}/* $target_dir/${name}/
rmdir $build_dir
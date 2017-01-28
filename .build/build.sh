#!/bin/sh

function_name () { 
    rsvg-convert -h 32 icon.svg > icon-32.png
    rsvg-convert -h 64 icon.svg > icon-64.png
    rsvg-convert -h 128 icon.svg > icon-128.png
}

cd projects/
for dir in *
do
  test -d "$dir" || continue
  ( cd $dir/ && function_name )
done
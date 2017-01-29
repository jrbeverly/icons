#!/bin/sh

function_name () { 
    rsvg-convert -h 480 icon.svg > icon-480.png
}

cd projects/
for dir in *
do
  test -d "$dir" || continue
  ( cd "$dir/" && function_name )
done
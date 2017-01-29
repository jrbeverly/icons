#!/bin/sh

cd projects/
for dir in *
do
  test -d "$dir" || continue
  ( cd "$dir/" && rm -rf *.png )
done
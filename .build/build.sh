#!/bin/sh
set -ex

cd src/
for dir in *
do
  test -d "$dir" || continue
  ( cd "$dir/" && ( (test -f "Makefile" && make ) || true) )
  ( cd "$dir/" && ( (test -f "build.sh" && bash build.sh ) || true) )
done
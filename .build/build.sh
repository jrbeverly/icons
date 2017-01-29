#!/bin/sh
set -ex

cd src/
for dir in *
do
  test -d "$dir" || continue
  ( cd "$dir/" && make )
done
#!/bin/sh
set -ex

# Variables
#
# Variables of the script.
current="$(pwd)"
target_dir="${current}/output"
make_exc="$(pwd)/build/make.sh"

# Rasterizing
#
# Rasterizes the scalable vector graphics.
rm -rf $target_dir

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
  ( cd target/ && for filename in *.svg; do sh $make_exc $target_dir $dir $filename; done )

  rm -rf target/
  cd ..
done
#!/bin/sh
set -e

# Variables
#
# Build variables for directories.
DIR="$(dirname "$(dirname "$(readlink -f "$0")")")"

echo $DIR
# Environment
docker run --rm \
        -v "${DIR}":/media \
        --workdir=/media \
        jrbeverly/rsvg:baseimage sh build/build.sh
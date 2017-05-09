#!/bin/sh
set -ex

# Variables
#
# Build variables for directories.
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"

# Environment
docker run --rm -it \
        -v $(dirname $DIR):/media \
        jrbeverly/rsvg:privileged sh
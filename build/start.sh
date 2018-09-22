#!/bin/sh
set -e

# Variables
#
# Build variables for directories.
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"

# Docker run
docker run --rm -it \
        -v $(dirname $DIR):/media \
        jrbeverly/rsvg:privileged sh
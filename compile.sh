#!/bin/sh
set -ex

docker run --rm -v $(pwd):/media jrbeverly/rsvg make
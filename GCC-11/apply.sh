#!/bin/sh

set -eu

if [ -z "${1:-}" ]; then
    echo "Usage: ./apply.sh <gcc-11.5-source-directory>"
    exit 1
fi

if [ ! -d "$1/gcc" ]; then
    echo "Error: '$1' does not look like a GCC source directory"
    exit 1
fi

PATCHESDIR="$(cd $(dirname "$0"); pwd)"
GCCDIR="$1"

cd "$GCCDIR"
patch -p1 < "$PATCHESDIR"/P1-PR100740.patch
patch -p1 < "$PATCHESDIR"/P2-PR101885.patch
patch -p1 < "$PATCHESDIR"/P3-PR100499-1.patch
patch -p1 < "$PATCHESDIR"/P3-PR100499-2.patch
patch -p1 < "$PATCHESDIR"/P3-PR100499-3.patch
patch -p1 < "$PATCHESDIR"/P4-PR107176.patch
patch -p1 < "$PATCHESDIR"/P5-PR117574.patch
patch -p1 < "$PATCHESDIR"/P6-PR116585.patch
patch -p1 < "$PATCHESDIR"/P7-PR116621.patch

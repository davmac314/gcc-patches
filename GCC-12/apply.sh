#!/bin/sh

set -eu

if [ -z "${1:-}" ]; then
    echo "Usage: ./apply.sh <gcc-12.5-source-directory>"
    exit 1
fi

if [ ! -d "$1/gcc" ]; then
    echo "Error: '$1' does not look like a GCC source directory"
    exit 1
fi

PATCHESDIR="$(cd $(dirname "$0"); pwd)"
GCCDIR="$1"

cd "$GCCDIR"
patch -p1 < "$PATCHESDIR"/P1-PR120471.patch
patch -p1 < "$PATCHESDIR"/P2-PR120837.patch
patch -p1 < "$PATCHESDIR"/P3-PR120944.patch

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
patch -p1 < "$PATCHESDIR"/P4-PR107176.patch
patch -p1 < "$PATCHESDIR"/P5-PR119085.patch
patch -p1 < "$PATCHESDIR"/P6-PR121370.patch
patch -p1 < "$PATCHESDIR"/P7-PR121870.patch
patch -p1 < "$PATCHESDIR"/P8-PR122976.patch
patch -p1 < "$PATCHESDIR"/P9-fix-build-with-glibc-2.42.patch
patch -p1 < "$PATCHESDIR"/P10-PR124358.patch
patch -p1 < "$PATCHESDIR"/P11-PR123818.patch
patch -p1 < "$PATCHESDIR"/P12-PR120250.patch
patch -p1 < "$PATCHESDIR"/P13-PR121773.patch
patch -p1 < "$PATCHESDIR"/P14-PR122104.patch
patch -p1 < "$PATCHESDIR"/P15-PR123156.patch
patch -p1 < "$PATCHESDIR"/P16-PR120182.patch
patch -p1 < "$PATCHESDIR"/P17-PR123602.patch

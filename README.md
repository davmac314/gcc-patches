# GCC patches

This is a collection of patches for versions of GCC in older release
series (currently, 11.5.0 and 12.5.0).

It includes a number of fixes, backported from later branches, for issues that
also apply to these older versions. The focus is on C/C++ compilation and
x86/x86-64 architectures (but some fixes are general).

Especially With these fixes applied - assuming that the fixes do not introduce
regressions - the number of known bugs in these older versions is
significantly lower than in later, still maintained, series (13, 14, 15).

The patches are in the GCC-11/GCC-12 directories. To apply them, use the
supplied script (apply.sh, found in either GCC-11/GCC-12 as appropriate) as
follows:

    apply.sh <gcc-source-directory>

## Caveat

For each patch, it has been verified that the related issue is fixed once
the patch is applied.

However, these patches are unofficial, and may introduce bugs as well as fix
them; I personally consider the probability of that to be low. However, I am
not a GCC maintainer.

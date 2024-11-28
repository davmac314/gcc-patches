# GCC patches

This is a collection of patches for the GCC 11 series (last official release
11.5.0). It includes a number of fixes, backported from later branches,
for issues that also apply to 11.5.0. The focus is on C/C++ compilation
and x86/x86-64 architectures (but some fixes are general).

Especially With these fixes applied - assuming that the fixes do not
introduce regressions - the number of bugs in the GCC 11 series is
significantly lower than in later, still maintained, series (12, 13, 14).

The patches are in the GCC-11 directory. To apply them, use the supplied
script (apply.sh) as follows:

    apply.sh <gcc-source-directory>

## Caveat

These patches are unofficial, and may introduce bugs as well as fix them;
I personally consider the probability of that to be low. However, I am not
a GCC maintainer.

For each patch, it has been verified that the related issue is fixed once
the patch is applied.

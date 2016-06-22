Demos of l3build testing
========================

This is a small collection of basic demonstration test file that show how
[`l3build`](http://ctan.org/pkg/l3build) can be used for testing TeX packages.
 
There are three directories here, one for each format to be tested. Within each
directory is a simple test set up.

The tests can be run using

    texlua build.lua check

Note that `l3build` is actively developed and new features may be added over
time to support a wider range of test arrangements. At present, the test system
is designed such that all tests are run with each engine specified, but there
is an assumption that the same format will be used for all of the tests.

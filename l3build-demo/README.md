Demos of l3build testing
========================

This is a small collection of basic demonstration test file that show how
[`l3build`](http://ctan.org/pkg/l3build) can be used for testing TeX packages.
 
There are three directories here, one for each format to be tested. Within each
directory is a simple test set up.

The tests can be run using

    texlua build.lua check


If you are creating PDF-based targets, there are some restrictions on
what will work (TeX Live 16 binaries):

- LuaTeX does not have support for reproducible PDFs, so will always
  produce failures
- pTeX, upTeX and XeTeX will proiduce PDFs which are reproducible on
  the same platform but which fail on other platforms (Windows/*nix
  interchange): all of these methods use (x)dvipdfmx which is
  responsible for the variations
- pdfTeX in DVI mode will produce failing PDFs as this route requires
  ps2pdf and it does not support reproducible PDFs
- pdfTeX in PDF mode will give successful results cross-platform

As a result of the above considerations, PDF-based testing is best
used only with pdfTeX in PDF-mode at present.

Note that `l3build` is actively developed and new features may be added over
time to support a wider range of test arrangements. At present, the test system
is designed such that all tests are run with each engine specified, but there
is an assumption that the same format will be used for all of the tests.

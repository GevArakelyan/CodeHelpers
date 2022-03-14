
# Making builds faster:

MSVC Compiler : Modern C++ Game Development on Microsoft Platforms https://www.youtube.com/watch?v=on8HMZdAXaw

For parallel builds, use /MP flag and for parrallel link use /cgthreads flag to set the number of threads to be used by linker.


## Compiler /d2cgsummary Linker /d2:"-cgsummary"
    This flags will show anomalistic compile times.
    for Compiler you can also use /Bt+.

## [/INCREMENTAL (Link Incrementally)](https://docs.microsoft.com/en-us/cpp/build/reference/incremental-link-incrementally?view=msvc-160)

By default, the linker runs in incremental mode. To override a default incremental link, specify /INCREMENTAL:NO.

Most programs can be linked incrementally. However, some changes are too great, and some options are incompatible with incremental linking. LINK performs a full link if any of the following options are specified:

- Link Incrementally is not selected (/INCREMENTAL:NO)
- /OPT:REF is selected
- /OPT:ICF is selected
- /OPT:LBR is selected
- /ORDER is selected

/INCREMENTAL is implied when /DEBUG is specified
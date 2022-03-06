
# Making builds faster:

MSVC Compiler : Modern C++ Game Development on Microsoft Platforms https://www.youtube.com/watch?v=on8HMZdAXaw

For parallel builds, use /MP flag and for parrallel link use /cgthreads flag to set the number of threads to be used by linker.


## Compiler /d2cgsummary Linker /d2:"-cgsummary"
    This flags will show anomalistic compile times.
    for Compiler you can also use /Bt+.


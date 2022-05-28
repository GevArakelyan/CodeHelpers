### ![Libraries](https://www.youtube.com/watch?v=-dxCaM4GOqs)

<!-- Show library dependencies -->
```
dumpbin /dependents pe-filename
ldd elf-filename
otool -L mach-o-filename
```

For delay loading

```
Windows: delayimp.lib + linker option /DELAYLOAD:mylib.dll
Solaris: linker option -z lazyload -lmylib
Linux: DIY solution: Implib.so(dll-like import library for posix)
```

To view exported symbols

```
dumpbin /exports mylib.dll
```

## To run function from delay load dll

```
Windows:
auto lib = ::LoadLibraryW(L"repromath.dll");
typedef auto ddot_t(int, double const* double const*) ->double;
auto ddot = (ddot_t*)::GetProcAddress(lib, "?ddot@repromath@@...");
printf("result = %g\n", ddot(3, x, y));
::FreeLibrary(lib);
POSIX:
auto lib = ::dlopen("repromath.so", RTLD_LOCAL | RTLD_NOW);
typedef auto ddot_t(int, double const* double const*) ->double;
auto ddot = (ddot_t*)::dlsym(lib, "?ddot@repromath@@...");
printf("result = %g\n", ddot(3, x, y));
::dlclose(lib);
we also have dlerror(); | get a descriptive string of the last error
```

Checkout what symbols are exported

```
Linux: objdump -T librepromath.so
```
### Compilers library and include search paths
```
Libraries are searched by default in the libraries path 
gcc --print-search-dirs

The include search path can be seen with
gcc -v -E - < /dev/null 2>&1 | awk '/^#include/,/^End of search/' | grep '^ '
```

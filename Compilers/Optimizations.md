## Opimization tips and tricks


- [msvc](https://docs.microsoft.com/en-us/cpp/build/optimization-best-practices?view=msvc-160)
   - ```
      #pragma optimize("", off)
      int myFunc() {...}
      #pragma optimize("", on)
      ```
- [gcc](https://gcc.gnu.org/onlinedocs/gcc/Optimize-Options.html)

## Clang
- [clang](https://clang.llvm.org/docs/Optimization-Guide.html)

You can significantly improve the performance of your code by using the following optimization flags:
   - `-O3 -D_LIBCPP_ABI_UNSTABLE -stdlib=libc++`
```
// below code is inside libcxx library
#if defined(_LIBCPP_ABI_UNSTABLE) || _LIBCPP_ABI_VERSION >= 2
<existing stuff>
// Enable clang::trivial_abi on std::unique_ptr.
#  define _LIBCPP_ABI_ENABLE_UNIQUE_PTR_TRIVIAL_ABI
// Enable clang::trivial_abi on std::shared_ptr and weak_ptr.
#  define _LIBCPP_ABI_ENABLE_SHARED_PTR_TRIVIAL_ABI
```

_LIBCPP_ABI_UNSTABLE will enable the experimental ABI. With this flag unique_ptr and shared_ptr will not generate so mach boilerplate code due to calling convensions when passed to other functions.
Past below code at godbold and compile with above flags. You will see how little code is generated with this flags for clang compiler. 
```
...
#endif

#include <memory>

void gun(std::unique_ptr<int> p);
void fun2(std::unique_ptr<int> p) { gun(std::move(p)); }
```


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

-------
### Calling conventions:
For visual c++ compiler calling conventions are important mostly for x86 architecture.
Windows API in general uses __stdcall calling convention, because it produces less code size.
And smaller code generally means faster code.

```
File library.h 
#pragma once
void cluck();
---
File library.cpp
#include "library.h"
#include <stdio.h>

void cluck() {
   printf("click\n");
}
---
File library.def
EXPORT
cluck
---
Now let's produce library.dll

```
cl /W4 /LD Library.cpp Library.def 
---

File Application.cpp
#include "library.h"

int main() {
   cluck();
}

---
Let's link and run Application
cl /W4 Application.cpp /link Library.lib
---

```
to look at Application dependencies: Use Dependency Walker
depends.exe Application.exe

-----------
Now let's use above function from C#
File managed.cs

using System.Runtime.InteropServices;

class Application {
   static void Main() {
      cluck();
   }

   [DllImport("library.dll")]
   static extern void cluck();
}
---
csc managed.cs
managed.exe | this may not work because csc is by defualt will produce for any cpu.
---
Too see what processor architecture is used:

```
echo %PROCESSOR_ARCHITECTURE%
```
And too see what processor current c++ compiler is targeting:
```
cl
```

To create x86 app
csc /platform:x86 managed.cs
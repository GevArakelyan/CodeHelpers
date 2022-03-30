
![Clang LLVM Sanitizers]https://clang.llvm.org/docs/AddressSanitizer.html#disabling-instrumentation-with-attribute-no-sanitize-address

<!-- to suppress LeakSanitizer -->
**LSAN_OPTIONS=suppressions=MyLSan.supp**

Which contains lines of the form leak:<pattern>. Memory leak will be suppressed if pattern matches any function name, source file name, or library name in the symbolized stack trace of the leak report. See full documentation for more details.




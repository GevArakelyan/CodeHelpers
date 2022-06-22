Prefer static linking and Position dependent code.
Prefer 64-bit code, 32-bit data.
Prefer (32-bit) array indexing to pointers.
 - Prefer a[i++] to a[++i].
Prefer regular memory access patterns.
Minimize flow, avoid data dependencies.


## Integrals:
Prefer 32-bit ints to all other sizes.
- 64 bit may make some code 20x slower
- 8, 16-bit computations use conversion to 32-bit and back.
- Use small ints in arrays

Prefer unsigned to signed
- Except when converting to floating point

"Most numbers are small"
#---
## Floating Point:

Double precision as fast as single precision.
Extended precision just a bit slower
Do not mix the three
1-2 FP addition/subtraction units
1-2 FP multiplication/division untits
SSE accelerates throughput for certain computation kernels
ints->FPs cheap, FPs->ints expensive


## Strength reduction:
Speed hierarchy:
comparisons
u(int) add, subtract, bitops, shift
FP add, sub (separate unit!)
(u)int32 mul; FP mul
FP division, remainder
(u)int division, remainder
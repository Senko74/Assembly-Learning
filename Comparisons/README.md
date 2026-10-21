# comparisons

A set of comparison functions written in x86-64 assembly (MASM), called from C++.

## Functions

- `maxOf(a, b)` — returns the greater of the two values
- `minOf(a, b)` — returns the smaller of the two values
- `isEqual(a, b)` — 1 if a == b, else 0
- `isGreater(a, b)` — 1 if a > b, else 0
- `isGreaterOrEqual(a, b)` — 1 if a >= b, else 0
- `isLess(a, b)` — 1 if a < b, else 0
- `isLessOrEqual(a, b)` — 1 if a <= b, else 0

The functions returning 0 or 1 are used as booleans in C++.

## Build

```
ml64 /c maxOf.asm
cl /EHsc main.cpp maxOf.obj minOf.obj isEqual.obj isGreater.obj isGreaterOrEqual.obj isLess.obj isLessOrEqual.obj
main
```

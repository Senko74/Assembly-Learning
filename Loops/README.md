# loops

Loop exercises written in x86-64 assembly (MASM), called from C++. Each function uses a label, a `cmp` + jump to test the exit condition, the work, and a `jmp` back to the top.

## Functions

- `sumTo(n)` — returns 1 + 2 + ... + n
- `factorial(n)` — returns n! = n × (n-1) × ... × 1
- `countEven(n)` — returns how many even numbers there are from 1 to n
- `power(base, exp)` — returns base raised to the power exp

## What I learned

- a loop is a `jmp` that goes back up to a label
- the pattern is always: label, `cmp` + jump to exit, the work, `jmp` back up
- `inc` / `dec` move the counter; forgetting them makes an infinite loop
- `imul eax, edx` multiplies (used for factorial and power)
- `test r8, 1` checks the last bit to tell even from odd
- `loop` is a reserved instruction, so it can't be used as a label name

## Build

```
ml64 /c sumTo.asm
cl /EHsc main.cpp sumTo.obj factorial.obj countEven.obj power.obj
main
```

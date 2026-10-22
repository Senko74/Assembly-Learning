# call-stack

Functions that call other functions, written in x86-64 assembly (MASM) and called from C++. The functions are split across two files to practice sharing code between them.

## Functions

- `square(x)` — returns x²
- `addSquares(a, b)` — returns a² + b², by calling `square` twice
- `cube(x)` — returns x³, by calling `square` then multiplying by x (in `cube.asm`, using `square` from `addSquares.asm`)

## What I learned

- `call` pushes the return address on the stack and jumps; `ret` pops it and goes back
- registers are not saved by `call`: values that must survive a call are saved by hand with `push` / `pop`
- the stack is undone in the reverse order it was set up
- `sub rsp, 40` / `add rsp, 40` around calls reserves the 32-byte shadow space and keeps the stack aligned
- `public` exposes a function to other files, `extern name:proc` uses one from another file
- a function defined in two files makes the linker fail (`LNK2005`)

## Build

```
ml64 /c addSquares.asm
ml64 /c cube.asm
cl /EHsc main.cpp addSquares.obj cube.obj
main
```

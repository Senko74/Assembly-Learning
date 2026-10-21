# character-stats

A small game character sheet. The stats are stored in assembly with **different sizes**, and two assembly functions compute results that a C++ program prints.

## Stats

| Name | Type | Value |
|------|------|-------|
| strength | `byte` | 12 |
| agility | `byte` | 9 |
| health | `word` | 350 |
| bonus | `sbyte` | -5 |
| gold | `dword` | 1200 |

## Functions

- `getTotal`: returns strength + agility + health + bonus + gold
- `getPower`: returns strength + agility + bonus

Expected output:

```
Total : 1566
Power : 16
```

## What I learned

- `add` needs two operands of the **same size**
- `movzx` extends **unsigned** values (fills with 0)
- `movsx` extends **signed** values (copies the sign bit)
- Doing math in `AL` / `AX` loses carries: do it in 32 bits
- A function returns its value in `EAX`
- `RAX`, `RCX`, `RDX` and `R8` to `R11` are free to use; `RBX`, `RSI`, `RDI` and `R12` to `R15` must be preserved
- Only one `END` per file, at the very end
- The `.asm` and `.cpp` files need different names, otherwise both make the same `.obj`

## Build

```
ml64 /c TotalAsm.asm
cl Total.cpp TotalAsm.obj
Total
```
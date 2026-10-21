# character-stats

Character stats stored in x86-64 assembly (MASM) with different sizes, computed by two functions and printed from C++.

## Stats

- strength — byte — 12
- agility — byte — 9
- health — word — 235
- bonus — sbyte — -5
- gold — dword — 1200

## Functions

- `getTotal()` — returns strength + agility + health + bonus + gold
- `getPower()` — returns strength + agility + bonus

Each stat is extended to 32 bits before being added (`movzx` for unsigned values, `movsx` for the signed bonus), then summed in `EAX`.

## Build

```
ml64 /c TotalAsm.asm
cl /EHsc Total.cpp TotalAsm.obj
Total
```

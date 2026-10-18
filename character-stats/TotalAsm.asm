    .data
strength    byte    12
agility     byte    9
health      word    235
bonus       sbyte   -5
gold        dword   1200

    .code
    public getTotal
getTotal proc
    mov rax, 0
    movzx r8d, strength
    movzx r9d, agility
    movzx r10d, health
    movsx r11d, bonus
    mov ecx, gold
    add eax, r8d
    add eax, r9d
    add eax, r10d
    add eax, r11d
    add eax, ecx
    ret 
getTotal ENDP

    public getPower
getPower proc
    mov rax, 0
    movzx r8d, strength
    movzx r9d, agility
    movsx r10d, bonus
    add eax, r8d
    add eax, r9d
    add eax, r10d
    ret
getPower ENDP
         END

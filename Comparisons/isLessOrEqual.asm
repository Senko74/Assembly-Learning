    .code
    option casemap : none

    public isLessOrEqual
isLessOrEqual proc
    cmp rcx, rdx
    jle lessOrEqual
    mov eax, 0
    ret
lessOrEqual :
    mov eax, 1
    ret
isLessOrEqual ENDP
    END
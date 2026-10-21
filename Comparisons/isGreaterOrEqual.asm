    .code
    option casemap : none

    public isGreaterOrEqual
isGreaterOrEqual proc
    cmp rcx, rdx
    jge greaterOrEqual
    mov eax, 0
    ret
greaterOrEqual:
    mov eax, 1
    ret
isGreaterOrEqual ENDP
    END

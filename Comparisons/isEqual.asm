    .code
    option casemap : none

    public isEqual
isEqual proc
    cmp ecx, edx
    je equal
    mov eax, 0
    ret
equal :
    mov eax, 1
    ret
isEqual ENDP
    END
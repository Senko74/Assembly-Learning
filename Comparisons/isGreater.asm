    .code
    option casemap : none

    public isGreater
isGreater proc
    cmp ecx, edx
    jg greater
    mov eax, 0
    ret
greater :
    mov eax, 1
    ret

isGreater ENDP
    END
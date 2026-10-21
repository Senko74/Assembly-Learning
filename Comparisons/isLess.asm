    .code
    option casemap : none

    public isLess
isLess proc
    cmp rcx, rdx
    jl less
    mov eax, 0
    ret
less :
    mov eax, 1
    ret
isLess ENDP
    END
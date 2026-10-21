    .code
    option casemap:none

    public minOf
minOf proc
    cmp rcx, rdx
    jl min
    mov rax, rdx
    ret
min :
    mov rax, rcx
    ret
minOf ENDP
    END
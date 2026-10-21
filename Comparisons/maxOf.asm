
    .code
    option casemap : none

    public maxOf
maxOf proc
    cmp rcx, rdx
    jg max
    mov rax, rdx
    ret
max :
    mov rax, rcx
    ret 
    
maxOf ENDP
    END

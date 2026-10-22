    .code
    option casemap : none

    public sumTo
sumTo proc
    mov rax, 0 ; total
    mov r8, 0 ; i
    mov r9, rcx ; n

loopStart :
    cmp r8, r9
    jge finish
    inc r8
    add rax, r8
    jmp loopStart

finish :
    ret
    sumTo ENDP
    END
    
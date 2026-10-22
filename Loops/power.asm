    .code
    option casemap : none
    public power
power proc
    mov rax, 1 ; 
    mov r8, rcx ; base number
    mov r9, 0 ; i
    mov r10, rdx ; power n

powerLoop :
    cmp r9, r10
    jge finish
    inc r9
    imul rax, r8
    jmp powerLoop

finish : 
    ret
    power ENDP
    END

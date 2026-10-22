    .code
    option casemap : none

    public factorial
factorial proc
    mov rax, 1 ; total
    mov r8, 0 ; i
    mov r9, rcx ; n

factorialLoop :
    cmp r8, r9
    jge finish
    inc r8
    imul rax, r8
    jmp factorialLoop

finish : 
    ret
    factorial ENDP
    END

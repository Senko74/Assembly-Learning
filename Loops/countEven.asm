    .code
    option casemap : none

    public countEvenNumbers
countEvenNumbers proc
    mov rax, 0 ; Total
    mov r8, 0 ; i
    mov r9, rcx ; n

loopCount :
    cmp r8, r9
    jge finish
    inc r8
    test r8, 1
    jz estPair
    jmp loopCount

estPair :
    inc rax
    jmp loopCount

finish : 
    ret
    countEvenNumbers ENDP
    END
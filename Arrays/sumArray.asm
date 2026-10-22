    .code
    public sumArray
sumArray proc
    mov rax, 0 ; sum
    mov r8, 0 ; i
    mov r9, rcx ; adress
    mov r10, rdx ; size
calculationLoop :
    cmp r8, r10
    jge finish
    add rax, [r9 + r8*4]
    inc r8
    jmp calculationLoop
    
finish :
    ret
sumArray endp
    end

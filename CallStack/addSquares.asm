    .code
    option casemap : none
square proc
    mov r10, rcx
    imul r10, rcx
    mov rax, r10
    ret
square ENDP

    public addSquares
addSquares proc

    mov r10, 0 ; total

    push rcx
    sub rsp, 40
    call square
    mov r10, rax
    add rsp, 40
    pop rcx

    push r10
    push rcx
    mov rcx, rdx
    sub rsp, 40
    call square
    add rsp, 40
    pop rcx
    pop r10

    add r10, rax
    
    

    mov rax, r10
    ret

addSquares ENDP
    END

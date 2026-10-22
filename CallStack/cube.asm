    .code
    option casemap : none
    extern square : proc

    public cube
cube proc
    sub rsp, 40
    push rcx
    call square
    pop rcx
    imul rax, rcx
    add rsp, 40
    ret

cube endp
    end
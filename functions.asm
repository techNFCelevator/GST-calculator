strlen:
    push    ebx
    mov     ebx, eax

nextchar:
    cmp     byte [eax], 0
    jz      finished
    inc     eax
    jmp     nextchar

finished:
    sub     eax, ebx
    pop     ebx
    ret

strprint:
    push    edx
    push    ecx
    push    ebx
    push    eax
    call    strlen
 
    mov     edx, eax
    pop     eax
 
    mov     ecx, eax
    mov     ebx, 1
    mov     eax, 4
    int     80h
 
    pop     ebx
    pop     ecx
    pop     edx
    ret
    
calculate:
    finit
    fld1
    fld     dword[gst]
    fadd
    fstp    dword[output]
    ret
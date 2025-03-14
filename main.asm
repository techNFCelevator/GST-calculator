%include    'functions.asm'

SECTION .data
gst:    dd  0.05
msg1    db  'Please input a value up to the nearest hundredth: ', 0h
msg2    db  'After GST factored: ', 0h 

SECTION .bss
input:  RESD    8
tax:    RESD    8
output: RESD    8

SECTION .text
global _start

_start:

    mov     eax, msg1
    call    strprint

    mov     edx, 256
    mov     ecx, input
    mov     ebx, 0
    mov     eax, 3
    int     80h
    
    mov     eax, msg2
    call    strprint
    
    call    calculate
    
    mov     eax, output
    call    strprint

    mov     ebx, 0
    mov     eax, 1
    int     80h
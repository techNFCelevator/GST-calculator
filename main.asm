SECTION .data
msg1    db  'Please input a value up to the nearest hundredth: ', 0h
msg2    db  'After GST factored: ', 0h

SECTION .bss
input:  RESQ    1   ;
tax:    RESQ    1   ;
GST:    RESQ    1   ;
output: RESQ    1   ;


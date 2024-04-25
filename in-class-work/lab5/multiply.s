# Expression: a * b = c
.data
    float1: .float 5.5
    float2: .float 7.3

.text
.globl _start

_start:

    flw f0, 0(x0)
    flw f1, 4(x0)
    fmul.s f10, f0, f1
    
.data
    i: .word 10

.text
.globl main
main:
    la x5, i
    li x28, 1

loop:
    lw x6, 0(x5)
    li x7, 1
    blt x6, x7, end_loop

    mv a1, x6
    li a0, 1
    ecall

    sub x6, x6, x28
    sw x6, 0(x5)

    j loop

end_loop:

li a0, 10
ecall
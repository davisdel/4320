.data
    helloworld: .string "Hello World\n"

.text
.globl main
main:
    la a1, helloworld
    li a0, 4
    ecall

    li a0, 10
    ecall
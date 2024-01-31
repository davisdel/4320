#a = b + c + d - e
li x1, 10
li x2, 10
li x3, 10
li x4, 10
add x10, x1, x2
add x10, x10, x3
sub x10, x10, x4

addi a0, x0, 1
addi a1, x0, 42
ecall

#f = (g+h)-(i+j)
add x5, x20, x21
add x6, x22, x23
sub x19, x5, x6

addi   a0, x0, 1
addi   a1, x0, 42
ecall
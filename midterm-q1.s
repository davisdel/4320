.data
    address: .word 0 # initialize memory block and set to 0

.text
.globl main
# Multiply a, b, and c
la x28, address
li x5, 10 # Load 10 into a
li x6, 10 # Load 10 into b
li x7, 10 # Load 10 into c

# Multiply (a*b*c) and end result will be in x5
mul x5, x5, x6
mul x5, x5, x7

# Store x5 (1000) into memory
sw x5, 0(x28)

# Print result to the screen
addi x10, x0, 1
add x11, x0, x5
ecall

# Exit code
li a0, 10
ecall
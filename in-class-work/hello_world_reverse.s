.data
    helloworld: .string "Hello World\n"
    len:        .word 12          # Length of the string

.text
.globl main
main:
    la a1, helloworld         # Load the address of the string
    lw a2, len                 # Load the length of the string

    # Reverse the string
    li t0, 0                   # Initialize index i to 0
    li t1, -1                  # Initialize index j to -1

reverse_loop:
    addi t0, t0, 1             # Increment i
    add a3, a1, t0             # Calculate address of s[i]
    lb t2, 0(a3)                # Load s[i]
    
    addi t1, t1, -1            # Decrement j
    add a4, a1, t1             # Calculate address of s[j]
    lb t3, 0(a4)                # Load s[j]
    
    sb t3, 0(a3)                # Store s[j] at s[i]
    sb t2, 0(a4)                # Store s[i] at s[j]

    blt t0, a2, reverse_loop   # Repeat the loop until i < len/2

    # Print the reversed string
    li a0, 1                    # File descriptor: STDOUT
    li a2, 13                   # Length of the reversed string (including newline)
    li a7, 64                   # System call number for write
    ecall

    li a0, 10
    li a7, 93                   # System call number for exit
    ecall
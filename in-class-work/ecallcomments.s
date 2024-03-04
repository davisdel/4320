# Load immediate value 1 into register a0
li a0, 1

# Load immediate value 50 into register a1
li a1, 50

# Make a system call
ecall

# Load immediate value 10 into register a0
li a0, 10

# Make a system call to exit the program
ecall
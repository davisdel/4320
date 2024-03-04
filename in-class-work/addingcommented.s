# Expression: a = b + c + d + e - f
li x5, 10       # Load immediate value 10 into register x5 (b)
li x6, 10       # Load immediate value 10 into register x6 (c)
li x7, 10       # Load immediate value 10 into register x7 (d)
li x28, 10      # Load immediate value 10 into register x28 (e)
li x29, 10      # Load immediate value 10 into register x29 (f)
add x5, x5, x6  # Add values in x5 (b) and x6 (c), result in x5
add x5, x5, x7  # Add values in x5 (b+c) and x7 (d), result in x5
sub x5, x5, x28 # Add value in x28 (e) to x5 (b+c+d), result in x5
sub x5, x5, x29 # Subtract value in x29 (f) from x5 (b+c+d+e), result in x5

# System Call for Printing Result
addi x10, x0, 1 # Load immediate value 1 (system call for print) into register x10
add x11, x0, x5 # Copy the result from x5 (a) to x11
ecall           # Make a system call for printing, using values in x10 and x11

# System Call to exit
li a0, 10       # Load immediate value 10 into register a0
ecall           # Make a system call to exit the program
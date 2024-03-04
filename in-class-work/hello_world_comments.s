# Data Section
.data
    helloworld: .string "Hello World\n"  # Define a string "Hello World\n" and label it as helloworld

# Text Section
.text
.globl main  # Declare main as a global symbol

main:
    la a1, helloworld  # Load effective address of helloworld into a1 (a pointer to the string)
    li a0, 4            # Load the system call number 4 (print_str) into a0
    ecall               # Make a system call to print the string at the address in a1

    li a0, 10           # Load the integer value 10 into a0
    ecall               # Make a system call to exit
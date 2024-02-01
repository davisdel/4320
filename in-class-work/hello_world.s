  .data         # declare and initialize variables
hello:  .string "Hello world!\n" # string with null terminator
 
  .text         # code starts here
main:           # label marking the entry point of the program
  la x11, hello  # load the address of hello into $a0 (1st argument)
  addi x12, x0, 13
  addi x17, x0, 4     # code to print the string at the address a0
  ecall         # make the system call
 
  addi x17, x0, 10    # code to exit
  ecall         # make the system call
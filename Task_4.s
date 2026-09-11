.section .bss
.global ram 
.lcomm ram, 256     # Reserve 256 Bytes of RAM (Uninitialized memory)

.section .text
.global fill_ram    # Make function visible to C program

fill_ram: 

    movb $0 , %al   # initialize register to 0
    movb $0 , %bl   # initialize register to 0

    loop:
    addb $1, %al    # %al is used as incrementer, (up to 10)
    add %al , %bl   # Adds incremented value each loop to %bl, %bl holds sum
    
    cmpb $10 , %al   # when incrementer is not 10 repeat loop
    jne loop         # restart loop 

    movb %bl , ram+0x50   # moves sum from %bl into memory location


    ret             # Return control back to C program

.section .note.GNU-stack,"",@progbits
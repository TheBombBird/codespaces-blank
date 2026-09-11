.section .bss
.global ram 
.lcomm ram, 256     # Reserve 256 Bytes of RAM (Uninitialized memory)

.section .text
.global fill_ram    # Make function visible to C program

fill_ram: 
    
    series_sum:
    addb $1, ram+0x50;
    addb $2, ram+0x50;
    addb $3, ram+0x50;
    addb $4, ram+0x50;
    addb $5, ram+0x50;
    addb $6, ram+0x50;
    addb $7, ram+0x50;
    addb $8, ram+0x50;
    addb $9, ram+0x50;
    addb $0x0A, ram+0x50;


    ret             # Return control back to C program

.section .note.GNU-stack,"",@progbits
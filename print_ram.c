#include <stdio.h>

extern unsigned char ram[]; // RAM declared in assembly
extern void fill_ram(void); // Assembly function

int main()
{
    fill_ram(); // run assembly code

    printf("Print contents from 50H 58H:\n");

    for(int i = 0x50; i <= 0x58; i++)
    {
        printf("%02X ", ram[i]);
    }

    printf("\n");

    return 0;
}
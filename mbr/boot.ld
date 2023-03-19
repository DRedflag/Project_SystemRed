OUTPUT_FORMAT(binary)
ENTRY(_start)

SECTIONS
{
        . = 0x7c00;
        .text : {
                *(.text)
        }
        .data : {
                *(.data)
        }
        .bss : {
                *(.bss)
        }
        . = 0x7dfe;
        .sig : {
                SHORT(0xaa55)
        }
        __stage2_nsectors = ABSOLUTE((. - _start) / 512);
}


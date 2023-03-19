.section .text
.global _bios_print
.code16
_bios_print:
        mov $0x0e, %ah 
loop:
        lodsb 
        or %al, %al 
        jz print_end 
        int $0x10
        jmp loop
print_end:
        ret

.global _start
.code16
.section .text
_start:

        cli
        xor %ax, %ax
        mov %ax, %ds
        mov %ax, %es 
        mov %ax, %gs
        mov %ax, %fs
        mov %ax, %ss
        mov %ax, %sp
        mov %ax, %bp
        mov $load_disk_msg, %si 
        call _bios_print       
end_less:

        jmp .

.section .data
load_disk_msg:        .asciz "Loading disk..." 

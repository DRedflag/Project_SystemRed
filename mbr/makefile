AS=as
LD=ld

LINKER=boot.ld
QEMU=qemu-system-i386

DEBUGER=gdb


OBJ=boot.o bios_print.o


all: head.bin

%.o: %.s
	$(AS)  -o $@ $^ -g

head.bin: $(OBJ)
	$(LD) --oformat=binary -T$(LINKER) -nostartfiles -nostdlib $^ -o $@

run: head.bin 
	$(QEMU) -hda $< -s -S 

gdb: gdb.gdb
	$(DEBUGER) --tui -x $< 	

clean:
	rm -rf *.o a.out

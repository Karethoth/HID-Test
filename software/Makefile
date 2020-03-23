DEVICE     = atmega644
CLOCK      = 20000000
PROGRAMMER = -c usbtiny 
OBJECTS    = libs/usbdrv/usbdrv.o libs/usbdrv/usbdrvasm.o libs/usbdrv/oddebug.o ILI9163.o main.o
OFLAGS     = -std=c++17
FUSES      = -U lfuse:w:0xe7:m -U hfuse:w:0x99:m -U efuse:w:0xff:m
INCLUDES   = -Ilibs/usbdrv -I.

AVRDUDE = avrdude $(PROGRAMMER) -p $(DEVICE)
CC = avr-g++ -Wall -Os -DF_CPU=$(CLOCK) -mmcu=$(DEVICE) -DDEBUG_LEVEL=0 $(INCLUDES)
C_COMPILE = avr-gcc -Wall -Os -DF_CPU=$(CLOCK) -mmcu=$(DEVICE) -DDEBUG_LEVEL=0 $(INCLUDES)

all:	main.hex

flash:	all
	$(AVRDUDE) -U flash:w:main.hex:i

fuse:
	$(AVRDUDE) $(FUSES)

clean:
	rm -f main.hex $(OBJECTS)

ILI9163.o: libs/ILI9163_driver/ILI9163.c
	$(CC) -c -o ILI9163.o libs/ILI9163_driver/ILI9163.c

main.o: main.cpp
	$(CC) $(OFLAGS) -c -o main.o main.cpp

main.elf: $(OBJECTS)
	$(CC) $(OBJECTS) -o main.elf

main.hex: main.elf
	avr-objcopy -j .text -j .data -O ihex main.elf main.hex
	avr-size --format=avr --mcu=$(DEVICE) main.elf

disasm:	main.elf
	avr-objdump -d main.elf

.c.o:
	$(C_COMPILE) -c $< -o $@

.S.o:
	$(C_COMPILE) -x assembler-with-cpp -c $< -o $@

.c.s:
	$(C_COMPILE) -S $< -o $@

.cpp.o:
	$(CC) $(OFLAGS) $(INCLUDES) -c $< -o $@

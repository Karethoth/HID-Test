DEVICE     = atmega644
CLOCK      = 20000000
PROGRAMMER = -c usbtiny 
OBJECTS    = ILI9163.o main.o
OFLAGS     = -std=c++17
FUSES      = -U lfuse:w:0xe7:m -U hfuse:w:0x99:m -U efuse:w:0xff:m

AVRDUDE = avrdude $(PROGRAMMER) -p $(DEVICE)
CC = avr-g++ -Wall -Os -DF_CPU=$(CLOCK) -mmcu=$(DEVICE)


all:	mainprog.hex

flash:	all
	$(AVRDUDE) -U flash:w:mainprog.hex:i

fuse:
	$(AVRDUDE) $(FUSES)

clean:
	rm -f main.hex $(OBJECTS)

ILI9163.o: libs/ILI9163_driver/ILI9163.c
	$(CC) -c -o ILI9163.o libs/ILI9163_driver/ILI9163.c

main.o: main.cpp
	$(CC) $(OFLAGS) -c -o main.o main.cpp

main.elf: $(OBJECTS)
	$(CC) -o main.elf $(OBJECTS)

mainprog.hex: main.elf
	avr-objcopy -j .text -j .data -O ihex main.elf mainprog.hex
	avr-size --format=avr --mcu=$(DEVICE) main.elf

main.hex: main.elf
	avr-objcopy -j .text -j .data -O ihex main.o main.hex
	avr-size --format=avr --mcu=$(DEVICE) main.elf

disasm:	main.elf
	avr-objdump -d main.elf

cpp:
	$(CC) -E main.c

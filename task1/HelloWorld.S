@
@ Assembler program print out "Hello World"
@ using the Pico SDK.
@
@ R0 - first parameter to printf
@ R1 - second parameter to printer
@ R7 - index counter
@

.thumb_func		    @ Necessary because sdk uses BLX
.global main	            @ Provide program starting address to linker

main:
	MOV	R7, #100		@ initialize counter to 100
	BL	stdio_init_all	@ initialize uart or usb
loop:
	LDR	R0, =helloworld	@ load address of helloworld string
	MOV	R1, R7		@ Move the counter to second parameter
	BL	printf		@ Call pico_printf
  CMP R7, #0
  BEQ zero
  BGT nzero
  BLT boooo
nzero:
  SUB	R7, #1		@ Decrease counter
  B loop
zero:
  MOV R7, #100
  B loop
boooo:
  MOV R7, #0
		
.data
	       .align  4	@ necessary alignment
helloworld: .asciz   "Hello World %d\n"

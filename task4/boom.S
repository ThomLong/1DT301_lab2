@
@ Assembler program to flash three LEDs connected to the
@ Raspberry Pi Pico GPIO port using the Pico SDK.
@

	.EQU	A, 0
	.EQU	B, 1
	.EQU	C, 2
	.EQU	D, 3
	.EQU	E, 4
	.EQU	F, 5
	.EQU	G, 7
	.EQU	GPIO_OUT, 8
	.EQU	sleep_time, 2000

.thumb_func	@ Necessary because sdk uses BLX
.global main    @ Provide program starting address

main:
	MOV	R0, #A
	BL	gpio_init
	MOV	R0, #A
	MOV	R1, #GPIO_OUT
	BL	link_gpio_set_dir
	MOV	R0, #B
	BL	gpio_init
	MOV	R0, #B
	MOV	R1, #GPIO_OUT
	BL	link_gpio_set_dir
	MOV	R0, #C
	BL	gpio_init
	MOV	R0, #C
	MOV	R1, #GPIO_OUT
	BL	link_gpio_set_dir
	MOV	R0, #D
	BL	gpio_init
	MOV	R0, #D
	MOV	R1, #GPIO_OUT
	BL	link_gpio_set_dir
	MOV	R0, #E 
	BL	gpio_init
	MOV	R0, #E
	MOV	R1, #GPIO_OUT
	BL	link_gpio_set_dir
	MOV	R0, #F
	BL	gpio_init
	MOV	R0, #F
	MOV	R1, #GPIO_OUT
	BL	link_gpio_set_dir
	MOV	R0, #G
	BL	gpio_init
	MOV	R0, #G
	MOV	R1, #GPIO_OUT
	BL	link_gpio_set_dir
loop:   
	B zero
	LDR	R0, =sleep_time
	BL	sleep_ms
	B one
	LDR	R0, =sleep_time
	BL	sleep_ms
	B two
	LDR	R0, =sleep_time
	BL	sleep_ms
	B three
	LDR	R0, =sleep_time
	BL	sleep_ms
	B four
	LDR	R0, =sleep_time
	BL	sleep_ms
	B five
	LDR	R0, =sleep_time
	BL	sleep_ms
	B six
	LDR	R0, =sleep_time
	BL	sleep_ms
	B seven
	LDR	R0, =sleep_time
	BL	sleep_ms
	B eight
	LDR	R0, =sleep_time
	BL	sleep_ms
	B nine
	LDR	R0, =sleep_time
	BL	sleep_ms
	B loop

zero:
	MOV R0, #A
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #B
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #C
	MOV R1, #1
	BL link_gpio_put
		MOV R0, #D
	MOV R1, #1
	BL link_gpio_put
		MOV R0, #E
	MOV R1, #1
	BL link_gpio_put
		MOV R0, #F
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #G
	MOV R1, #0
	BL link_gpio_put
one:
  MOV R0, #A
	MOV R1, #0
	BL link_gpio_put
	MOV R0, #B
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #C
	MOV R1, #1
	BL link_gpio_put
		MOV R0, #D
	MOV R1, #0
	BL link_gpio_put
		MOV R0, #E
	MOV R1, #0
	BL link_gpio_put
		MOV R0, #F
	MOV R1, #0
	BL link_gpio_put
	MOV R0, #G
	MOV R1, #0
	BL link_gpio_put
two:
	MOV R0, #A
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #B
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #C
	MOV R1, #0
	BL link_gpio_put
	MOV R0, #D
	MOV R1, #1
	BL link_gpio_put
		MOV R0, #E
	MOV R1, #1
	BL link_gpio_put
		MOV R0, #F
	MOV R1, #0
	BL link_gpio_put
	MOV R0, #G
	MOV R1, #1
	BL link_gpio_put
three:
	MOV R0, #A
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #B
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #C
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #D
	MOV R1, #1
	BL link_gpio_put
		MOV R0, #E
	MOV R1, #0
	BL link_gpio_put
		MOV R0, #F
	MOV R1, #0
	BL link_gpio_put
	MOV R0, #G
	MOV R1, #1
	BL link_gpio_put
four:
	MOV R0, #A
	MOV R1, #0
	BL link_gpio_put
	MOV R0, #B
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #C
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #D
	MOV R1, #0
	BL link_gpio_put
		MOV R0, #E
	MOV R1, #0
	BL link_gpio_put
		MOV R0, #F
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #G
	MOV R1, #1
	BL link_gpio_put
five:
	MOV R0, #A
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #B
	MOV R1, #0
	BL link_gpio_put
	MOV R0, #C
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #D
	MOV R1, #1
	BL link_gpio_put
		MOV R0, #E
	MOV R1, #0
	BL link_gpio_put
		MOV R0, #F
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #G
	MOV R1, #1
	BL link_gpio_put
six:
	MOV R0, #A
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #B
	MOV R1, #0
	BL link_gpio_put
	MOV R0, #C
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #D
	MOV R1, #1
	BL link_gpio_put
		MOV R0, #E
	MOV R1, #1
	BL link_gpio_put
		MOV R0, #F
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #G
	MOV R1, #1
	BL link_gpio_put
seven:
	MOV R0, #A
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #B
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #C
	MOV R1, #0
	BL link_gpio_put
	MOV R0, #D
	MOV R1, #0
	BL link_gpio_put
		MOV R0, #E
	MOV R1, #0
	BL link_gpio_put
		MOV R0, #F
	MOV R1, #0
	BL link_gpio_put
	MOV R0, #G
	MOV R1, #0
	BL link_gpio_put
eight:
	MOV R0, #A
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #B
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #C
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #D
	MOV R1, #1
	BL link_gpio_put
		MOV R0, #E
	MOV R1, #1
	BL link_gpio_put
		MOV R0, #F
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #G
	MOV R1, #1
	BL link_gpio_put
nine:
	MOV R0, #A
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #B
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #C
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #D
	MOV R1, #1
	BL link_gpio_put
		MOV R0, #E
	MOV R1, #0
	BL link_gpio_put
		MOV R0, #F
	MOV R1, #1
	BL link_gpio_put
	MOV R0, #G
	MOV R1, #1
	BL link_gpio_put
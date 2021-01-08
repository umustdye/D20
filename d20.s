//const int SIDES = 20;
.equ SIDES, 20
.equ OUTPUT, 1
.equ INPUT, 0
.equ LOW, 0
.equ HIGH, 1
// pin number will be in r0
.equ PINA, 25
.equ PINB, 22
.equ PINC, 7
.equ PIND, 15
.equ PINE, 16

.equ PINF, 1
.equ PING, 0
.equ PINH, 2
.equ PINI, 3
.equ PINJ, 4
.equ PINK, 5 
.equ PINL, 12
.equ PINM, 13

.equ PINN, 14
.equ PINO, 6
.equ PINP, 10
.equ PINQ, 11
.equ PINR, 30
.equ PINS, 31

.equ PINT, 21

.section .rodata
output: .asciz "%d\n"

.global main
.text

main:
	push {lr}
	mov r0, #0
	bl time
	bl srand

	bl rand

//	
	mov r1, r0
	mov r0, #0
	bl time 
	bl srand
	bl rand
	add r0, r1, r0
//

	mov r1, #SIDES
	bl div_mod


//	mov r2, r0 //just in case
//	mov r1, r0
//	ldr r0, =output
//	bl printf


//	mov r0, r1
	cmp r0, #1
	beq led_1

//	mov r0, r1
	cmp r0, #2
	beq led_2

//	mov r0, r1
	cmp r0, #3
	beq led_3

//	mov r0, r1
	cmp r0, #4
	beq led_4

//	mov r0, r1
	cmp r0, #5
	beq led_5

//	mov r0, r1
	cmp r0, #6
	beq led_6

//	mov r0, r1
	cmp r0, #7
	beq led_7

//	mov r0, r1
	cmp r0, #8
	beq led_8

//	mov r0, r1
	cmp r0, #9
	beq led_9

//	mov r0, r1
	cmp r0, #10
	beq led_10

//	mov r0, r1
	cmp r0, #11
	beq led_11

//	mov r0, r1
	cmp r0, #12
	beq led_12

//	mov r0, r1
	cmp r0, #13
	beq led_13

//	mov r0, r1
	cmp r0, #14
	beq led_14

//	mov r0, r1
	cmp r0, #15
	beq led_15

//	mov r0, r1
	cmp r0, #16
	beq led_16

//	mov r0, r1
	cmp r0, #17
	beq led_17

//	mov r0, r1
	cmp r0, #18
	beq led_18

//	mov r0, r1
	cmp r0, #19
	beq led_19

//	mov r0, r1
	cmp r0, #20
	beq led_20
	

led_finish:
	push {lr}
	bl wiringPiSetup

	mov r0, #PINA
	mov r1, #OUTPUT
	bl pinMode

	mov r0, #PINA
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#500
	bl delay

	mov r0, #PINA
	mov r1, #LOW
	bl digitalWrite

	ldr r0, =#500
	bl delay

	mov r0, #PINA
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#500
	bl delay

	mov r0, #PINA
	mov r1, #LOW
	bl digitalWrite

	ldr r0, =#500
	bl delay

	mov r0, #PINA
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#500
	bl delay	

	mov r0, #PINA
	mov r1, #LOW
	bl digitalWrite
	bal end_for

led_1:
	push {lr}
	bl wiringPiSetup

	mov r0, #PINA
	mov r1, #OUTPUT
	bl pinMode

	mov r0, #PINA
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#5000
	bl delay

	mov r0, #PINA
	mov r1, #LOW
	bl digitalWrite
	bal end_for 

led_2: 
	push {lr}
	bl wiringPiSetup

	mov r0, #PINB
	mov r1, #OUTPUT
	bl pinMode

	mov r0, #PINB
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#5000
	bl delay

	mov r0, #PINB
	mov r1, #LOW
	bl digitalWrite
	bal end_for
		

led_3:
	push {lr}
	bl wiringPiSetup

	mov r0, #PINC
	mov r1, #OUTPUT
	bl pinMode

	mov r0, #PINC
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#5000
	bl delay

	mov r0, #PINC
	mov r1, #LOW
	bl digitalWrite
	bal end_for

led_4:
	push {lr}
	bl wiringPiSetup

	mov r0, #PIND
	mov r1, #OUTPUT
	bl pinMode

	mov r0, #PIND
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#5000
	bl delay

	mov r0, #PIND
	mov r1, #LOW
	bl digitalWrite
	bal end_for

led_5: 	
	push {lr}
	bl wiringPiSetup
	
	mov r0, #PINE
	mov r1, #OUTPUT
	bl pinMode
	
	mov r0, #PINE
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#5000
	bl delay

	mov r0, #PINE
	mov r1, #LOW
	bl digitalWrite
	bal end_for

led_6:
	push {lr}
	bl wiringPiSetup

	mov r0, #PINF
	mov r1, #OUTPUT
	bl pinMode

	mov r0, #PINF
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#5000
	bl delay

	mov r0, #PINF
	mov r1, #LOW
	bl digitalWrite
	bal end_for
	
led_7:
	push {lr}
	bl wiringPiSetup

	mov r0, #PING
	mov r1, #OUTPUT
	bl pinMode

	mov r0, #PING
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#5000
	bl delay
	
	mov r0, #PING
	mov r1, #LOW
	bl digitalWrite
	bal end_for

led_8:
	push {lr}
	bl wiringPiSetup

	mov r0, #PINH
	mov r1, #OUTPUT
	bl pinMode

	mov r0, #PINH
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#5000
	bl delay

	mov r0, #PINH
	mov r1, #LOW
	bl digitalWrite
	bal end_for

led_9:
	push {lr}
	bl wiringPiSetup

	mov r0, #PINI
	mov r1, #OUTPUT
	bl pinMode

	mov r0, #PINI
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#5000
	bl delay

	mov r0, #PINI
	mov r1, #LOW
	bl digitalWrite
	bal end_for

led_10:
	push {lr}
	bl wiringPiSetup

	mov r0, #PINJ
	mov r1, #OUTPUT
	bl pinMode

	mov r0, #PINJ
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#5000
	bl delay

	mov r0, #PINJ
	mov r1, #LOW
	bl digitalWrite
	bal end_for

led_11:
	push {lr}
	bl wiringPiSetup

	mov r0, #PINK
	mov r1, #OUTPUT
	bl pinMode

	mov r0, #PINK
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#5000
	bl delay

	mov r0, #PINK
	mov r1, #LOW
	bl digitalWrite
	bal end_for

led_12:
	push {lr}
	bl wiringPiSetup

	mov r0, #PINL
	mov r1, #OUTPUT
	bl pinMode

	mov r0, #PINL
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#5000
	bl delay

	mov r0, #PINL
	mov r1, #LOW
	bl digitalWrite
	bal end_for

led_13:
	push {lr}
	bl wiringPiSetup

	mov r0, #PINM
	mov r1, #OUTPUT
	bl pinMode

	mov r0, #PINM
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#5000
	bl delay

	mov r0, #PINM
	mov r1, #LOW
	bl digitalWrite
	bal end_for

led_14:
	push {lr}
	bl wiringPiSetup

	mov r0, #PINN
	mov r1, #OUTPUT
	bl pinMode

	mov r0, #PINN
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#5000
	bl delay

	mov r0, #PINN
	mov r1, #LOW
	bl digitalWrite
	bal end_for

led_15:
	push {lr}
	bl wiringPiSetup

	mov r0, #PINO
	mov r1, #OUTPUT
	bl pinMode

	mov r0, #PINO
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#5000
	bl delay

	mov r0, #PINO
	mov r1, #LOW
	bl digitalWrite
	bal end_for

led_16:
	push {lr}
	bl wiringPiSetup

	mov r0, #PINP
	mov r1, #OUTPUT
	bl pinMode

	mov r0, #PINP
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#5000
	bl delay

	mov r0, #PINP
	mov r1, #LOW
	bl digitalWrite
	bal end_for

led_17:
	push {lr}
	bl wiringPiSetup

	mov r0, #PINQ
	mov r1, #OUTPUT
	bl pinMode

	mov r0, #PINQ
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#5000
	bl delay

	mov r0, #PINQ
	mov r1, #LOW
	bl digitalWrite
	bal end_for

led_18:
	push {lr}
	bl wiringPiSetup

	mov r0, #PINR
	mov r1, #OUTPUT
	bl pinMode

	mov r0, #PINR
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#5000
	bl delay

	mov r0, #PINR
	mov r1, #LOW
	bl digitalWrite
	bal end_for

led_19:
	push {lr}
	bl wiringPiSetup

	mov r0, #PINS
	mov r1, #OUTPUT
	bl pinMode

	mov r0, #PINS
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#5000
	bl delay

	mov r0, #PINS
	mov r1, #LOW
	bl digitalWrite
	bal end_for

led_20:
	push {lr}
	bl wiringPiSetup

	mov r0, #PINT
	mov r1, #OUTPUT
	bl pinMode

	mov r0, #PINT
	mov r1, #HIGH
	bl digitalWrite

	ldr r0, =#5000
	bl delay

	mov r0, #PINT
	mov r1, #LOW
	bl digitalWrite
	bal end_for

end_for:

	mov r0, #0
	pop {pc}

div_mod:
	push {lr}
	mov r2, r1
	mov r1, #0
WHL_R0GTER2:
	cmp r0, r2
	blt WHL_R0GTER2_DONE
	adds r1, #1
	subs r0, r2
	bal WHL_R0GTER2
WHL_R0GTER2_DONE:	
	pop {pc}


.nolist
.include "m328pdef.inc" ; Define device ATmega328P
.list

; **********************************
;  P O R T S   A N D   P I N S
; **********************************
.equ pDirB = DDRB     ; Port B direction register
.equ pOutB = PORTB    ; Port B output register
.equ bPinB0 = PORTB0  ; Pin 0 on Port B

.cseg
.org 000000
;
; **********************************
; R E S E T  &  I N T - V E C T O R S
; **********************************
    rjmp Main ; Reset vector

Main:
    ; Set PORTB0 as an output pin
    sbi pDirB, bPinB0 ; Set Pin 0 of Port B as output

    ; Light up the LED connected to PORTB0
    sbi pOutB, bPinB0 ; Set PORTB0 high (LED on)

    rjmp Main         ; Infinite loop to keep LED on


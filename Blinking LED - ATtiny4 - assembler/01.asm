                        .include "tn4def.inc"

.cseg
.org 0x0000
    rjmp Main

Main:
    sbi DDRB, 0      ; PB0 as output

Loop:
    sbi PORTB, 0     ; LED ON
    rcall Delay1s

    cbi PORTB, 0     ; LED OFF
    rcall Delay1s

    rjmp Loop

Delay1s:
    ldi r20, 62
Outer:
    ldi r21, 255
Middle:
    ldi r22, 255
Inner:
    dec r22
    brne Inner
    dec r21
    brne Middle
    dec r20
    brne Outer
    ret


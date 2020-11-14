#include<p18F4550.inc>
			
			org 0x00
			goto start
			org 0x08
			retfie
			org 0x18
			retfie
start	clrf PORTD
		clrf TRISD
		movlw B'00101010'
		xorwf PORTD
		movlw 0x01
		addwf PORTD, 0x1, A
		
		END
	org $2000

SAVMSC = $0058 ; Screen memory address
EOL = $80 ; negative value to end of line

	print_message #hello1

	sleep
	sleep
	sleep
	sleep
	sleep

	print_message #hello2

	jmp *

; print routine

.proc print_message (.word yx) .reg
	stx loop+1 ; set address in LDA directly
	sty loop+2 ; set address in LDA directly
	ldy #0
loop
	lda 0000,y ; address is set above
	bmi endloop
	sta (SAVMSC),y
	iny
	jmp loop

endloop
	rts
	.endp

.proc sleep
	ldx #$ff
waitouter
	ldy #$ff
waitinner
	dey
	bne waitinner
	dex
	bne waitouter
	rts
	.endp

; Data
hello1
	.byte "HELLO ATARI 1!",EOL
hello2
	.byte "HELLO ATARI 2!",EOL

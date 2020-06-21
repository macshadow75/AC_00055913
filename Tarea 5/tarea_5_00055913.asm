org 	100h

section .text
	call 	trazado_grafico
	xor 	si, si
	xor 	di, di
    mov 	si, 15d
	mov 	di, 30d
    mov     bx, 120d
	call 	trazado_vertical
    mov 	si, 90d
	mov 	di, 30d
    mov     bx, 120d
	call 	trazado_vertical
 	mov 	si, 30d
	mov 	di, 50d
    mov     bx, 70d
	call 	trazado_vertical
 	mov 	si, 75d
	mov 	di, 50d
    mov     bx, 70d
	call 	trazado_vertical
 	mov 	si, 30d
	mov 	di, 90d
    mov     bx, 120d
	call 	trazado_vertical
 	mov 	si, 75d
	mov 	di, 90d
    mov     bx, 120d
	call 	trazado_vertical
    mov 	si, 15d
	mov 	di, 30d
    mov     bx, 90d
	call 	trazado_horizontal
	mov 	si, 30d
	mov 	di, 50d
    mov     bx, 75d
	call 	trazado_horizontal
	mov 	si, 30d
	mov 	di, 70d
    mov     bx, 76d
	call 	trazado_horizontal
	mov 	si, 30d
	mov 	di, 90d
    mov     bx, 75d
	call 	trazado_horizontal
	mov 	si, 15d
	mov 	di, 120d
    mov     bx, 31d
	call 	trazado_horizontal
	mov 	si, 75d
	mov 	di, 120d
    mov     bx, 91d
	call 	trazado_horizontal
	call 	kb
	int 	20h

trazado_grafico:
    mov	    ah, 00h
	mov	    al, 13h
	int 	10h
	ret

pixel:	
    mov	    ah, 0Ch
	mov 	al, 1010b
	int 	10h
	ret

trazado_horizontal: 
lupi_h:	
    mov 	cx, 0d
	add 	cx, si
	mov	    dx, di
	call 	pixel
	inc 	si
	cmp 	si, bx
	jne 	lupi_h
	ret

trazado_vertical:
lupi_v:	
    mov 	cx, si
	mov	    dx, 0d
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, bx
	jne 	lupi_v
	ret

kb: 	
    mov	    ah, 00h
	int 	16h
	ret

section .data
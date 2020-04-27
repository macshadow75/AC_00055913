;Tarea 2 - Ejercicio 1
org	100h

	;5+5+9+1+3=23
	;23/5=4.6= 5

	mov	ax,	0000h
  	add	ax,	5d
  	add	ax,	5d
  	add	ax,	9d
  	add	ax,	1d
	add	ax,	3d
	mov	bx,	5d
	div	bx

		;El ensamblador aproxima al entero menor que es 4, pero
		;lo correcto seria aproximar el 4.6 a 5, por eso
		;escogi la frase correspondiente promedio 5
		;El resultado se muestra en hexadecimal en el 20Fh

	mov	[20Fh],	ax

  	mov	word[200h],	"E"
	mov	word[201h],	"n"

	mov	word[203h],	"e"
	mov	word[204h],	"l"

	mov	word[206h],	"s"
	mov	word[207h],	"e"
	mov	word[208h],	"g"
	mov	word[209h],	"u"
	mov	word[20Ah],	"n"
	mov	word[20Bh],	"d"
	mov	word[20Ch],	"o"

;Tarea 2 - Ejercicio 2
	mov	ax,	4h
	mov	bx,	0d

virus1:
	mov	[210h+bx],	ax
	mov	cx,	2h
	mul	cx
	inc	bx
	cmp	ax,	100h
	jb	virus1

virus2:
	mov	[210h+bx],	ax
	mov	cx,	2h
	mul	cx
	inc	bx
	inc	bx
	cmp	ax,	4097d
	jb	virus2

;Tarea 2 - Ejercicio 3
	mov	ax,	0000h
	mov	bx,	0000h
	mov	cx,	0000h
	mov	dx,	0000h

	mov	bl,	2d
	mov	dl,	1d
	mov	[220h],	cl
	mov	[221h],	dl

fibonnaci:
	mov	ax,	dx
	add	ax,	cx
	mov	[220h+bx],	ax
	mov	cx,	dx
	mov	dx,	ax
	inc	bl
	cmp	bl,	14d
	jb	fibonnaci

	mov	ax,	dx
	add	ax,	cx
	mov	[220h+bx],	ah
	inc	bl
	mov	[220h+bx],	al
	mov	cx,	dx
	mov	dx,	ax

int 20h
